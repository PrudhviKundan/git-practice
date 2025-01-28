#!/bin/bash

USERID=$(id -u)
echo "User ID is : $USERID"

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access"
    exit 1
fi
dnf list installed git # Just checking whether installed or not

if [ $? - ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install gittChanti -y # here installing
    if [ $? -ne 0 ]
    then 
        echo "Git installation is not success... check it"
        exit 1
    else
        echo "Git installation is success"
    fi
else
    echo "Git is already installed, nothing to do.."
fi
