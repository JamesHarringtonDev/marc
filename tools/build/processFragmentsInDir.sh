#!/bin/bash

dirName=$1
fileToWrite=$2

echo 

for FILE in $dirName/*; do
  echo $FILE
  if [ -d $FILE ]; then
    ./tools/build/processFragmentsInDir.sh $FILE $fileToWrite
  else
    printf "\n# $FILE \n" >> $fileToWrite 
    cat $FILE >> $fileToWrite
    printf "\n" >> $fileToWrite 
  fi
done;