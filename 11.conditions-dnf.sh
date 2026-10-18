#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
echo "please run this script with sudo access"
exit 1
fi
echo "processing"
dnf install nginx -y
if [ $? -ne 0 ]; then
echo "nginx install is failed"
exit 1
else 
echo "nginx installation sucess"
fi
dnf install mysql -y
if [ $? -ne 0 ]; then
echo "mysql installation failed"
exit 1
else
echo "mysql sucess"
fi