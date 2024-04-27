#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)
echo "please enter source file"
read SOURCE_FILE
#SOURCE_FILE=/home/ec2-user/shell-script/text.txt
DESTINATION_FOLDER=/tmp/zip

tar cfz $SOURCE_FILE.tar.gz $SOURCE_FILE
BACKUP_FILE=$SOURCE_FILE.tar.gz.$TIMESTAMP
DESTINATION_FILE=$(cp $BACKUP_FILE $DESTINATION_FOLDER) 
echo " FILE COMPRESSED "
