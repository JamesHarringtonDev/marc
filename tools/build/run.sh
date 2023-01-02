#!/bin/bash

timestamp=$(date +"%m%d%y-%H%M")
filename="rcFile"

./tools/build/generateRunCommandsFile.sh $filename
