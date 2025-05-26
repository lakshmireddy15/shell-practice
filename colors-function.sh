#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo -e "$R Error:: Run this scrpit with root acess $N"
    exit 1 # give other than 0 upto 127
else
    echo -e " You are running with root acess "
fi
VALIDATE(){
    # we need to installation is sucess or not
    if [ $? -eq 0 ]
    then 
        echo -e "Installing $2 is ....$G sucess $N"
    else
        echo -e "Installing $2 is ....$R failure $N" 
        exit 1
    fi

}


# before installing 1st we need to check this is previously installed or not

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo -e "Mysql is not installed ....install mysql"
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "Mysql is installed....Nothing to do"
fi 

dnf list installed python3
if [ $? -ne 0 ]
then
    echo -e "python3 is not installed ....install python3"
    dnf install python3 -y
    # we need to installation is sucess or not
    VALIDATE $? "python3"
else
    echo -e "$G python3 is installed....Nothing to do$N"
fi 

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo -e "$Y nginx is not installed ....install nginx $N"
    dnf install nginx -y
    # we need to installation is sucess or not
    VALIDATE $? "nginx"
else
    echo -e  "$R nginx is installed....Nothing to do $N"
fi 