#!/bin/bash

timestamp=$(date +"%m%d%y-%H%M")
filename="rcFile$timestamp"

touch "output/"$filename

cat header.sh >> "output/"$filename
printf "\n" >> "output/"$filename 

for FILE in "fragments"/*; do
  printf "\n# $FILE \n" >> "output/"$filename 
  cat $FILE >> "output/"$filename
  printf "\n" >> "output/"$filename 
done;

cat footer.sh >> "output/"$filename

echo "File generated: output/$filename"
