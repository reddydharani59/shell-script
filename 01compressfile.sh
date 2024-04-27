#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
backup_file="backup_$TIMESTAMP.tar.gz"
 echo "enter source directory"
 read source_dir
 echo "enter destination directory"
 read destination_dir
  
  tar -cvzf "$backup_file.tar.gz" "$source_dir"
  echo $?
  cp -rp "$backup_file.tar.gz" "$destination_dir"
    echo $?
    echo "backup filecompressed succefully"

#tar -cvfz 
#here c is creates new archieve file
#here z is through zip
#here f is specifies the archieve file name
#here v is shows the files being processed by archieve