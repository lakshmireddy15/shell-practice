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