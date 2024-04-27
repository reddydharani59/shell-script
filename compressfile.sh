#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)

echo "please enter source file"
read SOURCE_FILE
echo "please enter destination directory"
read DIRECTORY_FILE
#SOURCE_FILE=/home/ec2-user/shell-script/text.txt
BACKUP_FILE.$TIMESTAMP=$(tar cfz $BACKUP_FILE.tar.gz $SOURCE_FILE)

cp -rf "$BBACKUP_FILE.$TIMESTAMPACKUP_FILE" "$DESTINATION_FOLDER" 
echo " FILE COMPRESSED "
