#!/bin/bash

USERID=$(id -u)
#echo "User ID is : $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is.. FAILED"
        exit 1
    else 
        echo "$2 is.. SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access"
    exit 1
fi
dnf list installed git # Just checking whether installed or not

VALIDATE $? "Listing Git"

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install gittChanti -y # here installing
    VALIDATE $? "Installing Git!"
else
    echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed.. going to install"
    dnf install mysql -y
    VALIDATE $? "Installiing MYSQL!"
else
    echo "MySQL is already installed, nothing to do.."
fi