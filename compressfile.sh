#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)
SOURCE_FILE=/home/ec2-user/shell-script/text.txt
DESTINATION_FOLDER=/tmp/$SOURCE_FILE.tar.gz
FILE=$(tar cfz $SOURCE_FILE.tar.gz $SOURCE_FILE)
DESTINATION_FILE=$(cp $FILE $DESTINATION_FOLDER) 
echo " FILE COMPRESSED "
