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
echo "processing"
dnf install nginx -y &>> $logs_file
validate $? "nginx installation"
dnf install mysql -y &>> $logs_file
validate $? "mysql installation"
echo "script execution completed: $(date +"%F %T")"