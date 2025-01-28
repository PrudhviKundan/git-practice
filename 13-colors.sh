#!/bin/bash

USERID=$(id -u)
#echo "User ID is : $USERID"

#variable declaration
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then 
        echo "please run this script with root access"
        exit 1
    fi
}
VALIDATE(){
    if [ $1 -ne 0 ] # "$1 is $?"
    then
        echo "$2 is.. $R FAILED $N" # "$2 is 2nd parameter" 
        exit 1
    else 
        echo "$2 is.. $G SUCCESS $N"
    fi
}

#Check root access
CHECK_ROOT

dnf list installed git # Just checking whether installed or not

VALIDATE $? "Listing Git"

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install gittChanti -y # here installing
    VALIDATE $? "Installing Git!" #Validate Function with 2 arguments
else
    echo "Git is already installed, nothing to do.."
fi

#CHEKING MYSQL Installed or not
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed.. going to install"
    dnf install mysql -y #Installing MySQL
    VALIDATE $? "Installiing MYSQL!" #Validate Function with 2 arguments
else
    echo "MySQL is already installed, nothing to do.."
fi