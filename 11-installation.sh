#!/bin/bash

USERID=$(id -u)
echo "User ID is : $USERID"

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access"
fi
dnf install git -y