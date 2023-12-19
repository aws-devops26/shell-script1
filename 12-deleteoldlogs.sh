#!/bin/bash
SOURCE_DIR=/tmp/shell-script1-logs
if [ ! -d $SOURCE_DIR ]
then 
echo -e " $R source directory : $SOURCE_DIR does not exist. $N "
fi
FILES_TO_DELETE=$(find $SOURCE_DIR  -type f -mtime +14 -name "*.log")
while IFS =read -r line 
do
echo "deleting file : $line"
rm -rf $line
done <<< $FILES_TO_DELETE

copiedcd