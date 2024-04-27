#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)

echo "please enter source file"
read SOURCE_FILE
echo "please enter destination directory"
read DESTINATION_FOLDER
#SOURCE_FILE=/home/ec2-user/shell-script/text.txt
FILE=$(tar cfz "$BACKUP_FILE.tar.gz" "$SOURCE_FILE")

cp -rf "$FILE" "$DESTINATION_FOLDER" 
echo " FILE COMPRESSED "
