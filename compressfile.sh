#!/bin/bash
date=$(date +"%d%m%y")
backup_file="backup_$date.tar.gz"
 echo "enter source directory"
 read source_dir
 echo "enter destination directory"
 read destination_dir
  
  tar -cvzf "$source_dir.tar.gz" "$source_dir"
  echo $?
  cp -rp "$source_dir.tar.gz" "$destination_dir"
    echo $?
    echo "backup filecompressed succefully"
