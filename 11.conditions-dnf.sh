#!/bin/bash
userid=$(id -u)
if [ userid -ne 0]; then
echo "please run this script with sudo access"
fi
echo "processing"
dnf install nginx -y