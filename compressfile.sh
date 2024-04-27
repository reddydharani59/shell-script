#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)

echo "please enter source file"
read SOURCE_FILE
echo "please enter destination directory"
read DESTINATION_FOLDER
#SOURCE_FILE=/home/ec2-user/shell-script/text.txt
tar cfz "$BACKUP_FILE.tar.gz" "$SOURCE_FILE"

cp -rf "$BBACKUP_FILE.tar.gz" "$DESTINATION_FOLDER" 
echo " FILE COMPRESSED "
