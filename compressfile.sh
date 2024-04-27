#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-S)
SOURCE_FILE=/home/ec2-user/shell-script/sample1
DESTINATION_FOLDER=/home/ec2-user/tmp
FILE=$(tar cfz $SOURCE_FILE.tar.gz $SOURCE_FILE) >> DESTINATION_FOLDER
echo " FILE COMPRESSED "
