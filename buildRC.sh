#!/bin/bash

fileNames=$(./tools/builder/readFileNames.sh)
fileNamesValid=$(./tools/builder/checkAllFilesExist.sh)
echo $fileNamesValid

echo $(./tools/builder/readFiles.sh ${fileNames})

echo $array