#!/bin/bash
#!/bin/bash
userid=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
if [ $userid -ne 0 ]; then
echo "please run this script with sudo access"
exit 1
fi
mkdir -p $logs_folder #p folder exits then it won't create
echo "script started execution: $(date +"%F %T")"
validate(){
    if [ $1 -ne 0 ]; then
echo "${2} failed" | tee -a $logs_file
exit 1
else 
echo "${2} sucess" | tee -a $logs_file
fi
}
for package in $@
do
echo "going to install: ${package}"
dnf install $package -y &>> $logs_file
validate $? "installing ${package}"
done