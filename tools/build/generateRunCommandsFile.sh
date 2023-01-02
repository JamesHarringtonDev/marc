#!/bin/bash

timestamp=$(date +"%m%d%y-%H%M")
filename="rcFile$timestamp"

rm -f "output/"$filename
touch "output/"$filename

printf "#header.sh \n" >> "output/"$filename 
cat header.sh >> "output/"$filename
printf "\n" >> "output/"$filename 

for FILE in "fragments"/*; do
  printf "\n# $FILE \n" >> "output/"$filename 
  cat $FILE >> "output/"$filename
  printf "\n" >> "output/"$filename 
done;

printf "\n#footer.sh \n" >> "output/"$filename 
cat footer.sh >> "output/"$filename

echo "File generated: output/$filename"
