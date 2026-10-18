#!/bin/bash
userid=$(id -u)
if [ userid -ne 0]; then
echo "please run this script with sudo access"
exit 1
fi
echo "processing"
dnf install nginx -y