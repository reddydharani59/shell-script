#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)
BACKUP_FILE="BACKUP_FILE".$TIMESTAMP
echo "please enter source file"
read SOURCE_FILE
echo "please enter destination directory"
read DIRECTORY_FILE
#SOURCE_FILE=/home/ec2-user/shell-script/text.txt
tar cfz $BACKUP_FILE $SOURCE_FILE

cp -rf $BACKUP_FILE $DESTINATION_FOLDER 
echo " FILE COMPRESSED "
