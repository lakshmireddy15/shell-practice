#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error:: Run this scrpit with root acess"
    exit 1 # give other than 0 upto 127
else
    echo " You are running with root acess "
fi
VALIDATE(){
    # we need to installation is sucess or not
    if [ $? -eq 0 ]
    then 
        echo "Installing mysql is ....sucess"
    else
        echo "Installing mysql is ....failure" 
        exit 1
    fi

}


# before installing 1st we need to check this is previously installed or not

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "Mysql is not installed ....install mysql"
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo "Mysql is installed....Nothing to do"
fi 

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed ....install python3"
    dnf install python3 -y
    # we need to installation is sucess or not
    VALIDATE $? "python3"
else
    echo "python3 is installed....Nothing to do"
fi 

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed ....install nginx"
    dnf install nginx -y
    # we need to installation is sucess or not
    VALIDATE $? "nginx"
else
    echo "nginx is installed....Nothing to do"
fi 