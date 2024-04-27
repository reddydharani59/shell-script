#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)
SOURCE_FILE=/home/ec2-user/shell-script/text.txt
DESTINATION_FOLDER=/tmp/zip
FILE=$(tar cfz $SOURCE_FILE.tar.gz $SOURCE_FILE) 
DESTINATION_FOLDER=$FILE
echo " FILE COMPRESSED "
