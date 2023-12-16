#!/bin/bash
id=$(id -u)
R= "\e[31m"
N= "\e[0m"
G= "\e[32m"
if [ $id -ne 0 ]
then
echo " $R error : please run this script with root access $N"
exit 5
else
echo " $G u r root user $N"
fi
yum install mysql -y