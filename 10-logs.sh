#!/bin/bash
id=$(id -u)
TIMESTAMP= $(date +%F-%H-%M-%S)
R="\e[31m"
N="\e[0m"
G="\e[32m"
Y="\e[33m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo " script started executed at $TIMESTAMP" &>> $LOGFILE
validate(){
if [ $1 -ne 0 ]
then
echo  -e " $R $2.... FAILED $N"
exit 5
else
echo  -e " $G $1.... SUCESS $N"
fi
}
if [ $id -ne 0 ]
then
echo  -e " $R error : please run this script with root access $N"
exit 5
else
echo  -e " $G u r root user $N"
fi
yum install mysql -y &>> $LOGFILE
validate $? -e " $G mysql installed $N "
yum install git -y &>> $LOGFILE
validate $? -e " $G git installed $N "