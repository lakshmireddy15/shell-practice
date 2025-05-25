#!/bin/bash

echo "All variables passed to the scrpit : $@"
echo "Number of varaibles : $# "
echo "scrpit name :$0"
echo "current directry : $PWD"
echo "User running the scrpit : $USER"
echo "Home directory of the scrpit: $HOME "
echo "PID of the scrpit: $$ "
sleep 10
echo "PID of last command in background: $!"
