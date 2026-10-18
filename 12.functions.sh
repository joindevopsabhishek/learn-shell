#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
echo "please run this script with sudo access"
exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
echo "${2} failed"
exit 1
else 
echo "${2} sucess"
fi
}
echo "processing"
dnf install nginx -y
validate $? "nginx installation"
dnf install mysql -y
validate $? "mysql installation"