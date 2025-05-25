#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error:: Run this scrpit with root acess"
    exit 1 # give other than 0 upto 127
else
    echo " You are running with root acess "
fi

dnf install mysql -y
# we need to installation is sucess or not

if [ $? -eq 0 ]
then 
    echo "Installing mysql is ....sucess"
else
    echo "Installing mysql is ....failure" 
    exit 1
fi