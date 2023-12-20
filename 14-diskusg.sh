#!/bin/bash
DISK_USAGE=$(df -hT | grep -VE 'tmp|file')
DISK_THRESHOLD=1
message=""
while IFS= read line
do
    usage=$(echo $line | awk '{print $5f}' |cut -d % -f1)
    partition=$(echo $line | awk '{print $1f}')
    if [ $usage >= $DISK_THRESHOLD ]
    then
        message+="high disk usage on $partition: $usage\n"
    fi
done <<< $DISK_USAGE
    echo -e "message: $message" 
    