#!/bin/bash
id=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
 VALIDATE()
{
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
    echo -e "$R error : please run this with root access $N "
    exit 5
    else
    echo -e " $G u r root user $N"
fi
echo  "all arguements passed:$@ "
for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
    yum install $package -y
    VALIDATE $? "installation of $packages "
 else
    echo -e " $Y $package is already installed....$R SKIPPING $N"
done