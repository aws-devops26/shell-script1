#!/bin/bash
file=/etc/passwd
R="\e[31m"
N="\e[0m"
if [ ! -f $file ]
    then
    echo -e " $R source diectory : $SOURCE_DIR does not exists. $N"
fi 
while IFS=":" rear -r username password user-id group-id user-fullname home-dir shell-path
do  
    echo " username : $username"
    echo " userid = $user-id"
    echo " user fullname - $user-fullname "
done < $file
