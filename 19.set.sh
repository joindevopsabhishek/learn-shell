#!/bin/bash
set -e
userid=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
trap 'echo "error at $LINENO", command: "$BASH_COMMAND"' ERR

if [ $userid -ne 0 ]; then
echo "please run this script with sudo access"
exit 1
fi
mkdir -p $logs_folder #p folder exits then it won't create
echo "script started execution: $(date +"%F %T")" &>> $logs_file
for package in $@
do
  dnf list installed $package &>> $logs_file
  if [ $? -ne 0 ]; then
  echo "going to install: ${package}"
  dnf install $package -y &>> $logs_file
  else
    echo -e "${package} already installed...${Y}skipping${N}"
  fi
done