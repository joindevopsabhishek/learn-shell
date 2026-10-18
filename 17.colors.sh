#!/bin/bash

userid=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $userid -ne 0 ]; then
echo "please run this script with sudo access"
exit 1
fi
mkdir -p $logs_folder #p folder exits then it won't create
echo "script started execution: $(date +"%F %T")" &>> $logs_file
validate(){
    if [ $1 -ne 0 ]; then
       echo -e "${2}..${R}failed${N}" | tee -a $logs_file
       exit 1
    else 
       echo -e "${2}..${G}sucess${N}" | tee -a $logs_file
    fi
}
for package in $@
do
  dnf list installed $package &>> $logs_file
  if [ $? -ne 0 ]; then
  echo "going to install: ${package}"
  dnf install $package -y &>> $logs_file
  validate $? "installing ${package}.."
  else
    echo -e "${package} already installed...${Y}skipping${N}"
  fi
done