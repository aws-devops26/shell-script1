#!/bin/bash
id=$(id -u)
R="\e[31m"
N="\e[0m"
G="\e[32m"
validate(){
if [ $? -ne 0 ]
then
echo  -e " $R installing my sql FAILED $N"
exit 5
else
echo  -e " $G installing my sql SUCESS $N"
fi
}
if [ $id -ne 0 ]
then
echo  -e " $R error : please run this script with root access $N"
exit 5
else
echo  -e " $G u r root user $N"
fi
yum install mysql -y
validate