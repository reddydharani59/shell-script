#!/bin/bash
date=$(date +"%d%m%y")
backup_file="backup_$date.tar.gz"
 echo "enter source directory"
 read source_dir
 echo "enter destination directory"
 read destination_dir
  
  tar -cvzf "$backup_file" "$source_dir"
  echo $?
  cp -rp "$backup_file" "$destination_dir"
    echo $?
    echo "backup filecompressed succefully"
    