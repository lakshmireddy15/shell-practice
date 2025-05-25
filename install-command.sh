#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error:: Run this scrpit with root acess"
else
    echo " You are running with root acess "
fi