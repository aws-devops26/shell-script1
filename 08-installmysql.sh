#!/bin/bash
id=$(id -u)
r="\e[31m"
n="\e[0m"
g="\e[32m"
if [ $id -ne 0 ]
then
echo " $r error : please run this script with root access $n"
exit 5
else
echo " $g u r root user $n"
fi
yum install mysql -y