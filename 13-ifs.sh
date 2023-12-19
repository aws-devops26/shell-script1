#!/bin/bash
file=/etc/passwd
R="\e[31m"
N="\e[0m"
if [ ! -f $file ]
    then
    echo -e " $R source diectory : $SOURCE_DIR does not exists. $N"
fi 
while IFS=":" read -r username password user_id group_id user-fullname home_dir shell_path
do  
    echo " username : $username"
    echo " userid = $user_id"
    echo " user fullname - $user_fullname "
done < $file
