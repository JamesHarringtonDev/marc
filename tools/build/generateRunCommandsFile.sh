#!/bin/bash

filename=$1

rm -f "output/"$filename
touch "output/"$filename

printf "#header.sh \n" >> "output/"$filename 
cat header.sh >> "output/"$filename
printf "\n" >> "output/"$filename 

./tools/build/processFragmentsInDir.sh "fragments" "output/"$filename 

printf "\n#footer.sh \n" >> "output/"$filename 
cat footer.sh >> "output/"$filename
