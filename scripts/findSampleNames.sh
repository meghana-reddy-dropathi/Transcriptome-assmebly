#!/usr/bin/env bash
# findSampleNames.sh
# Usage: bash scripts/findSampleNames.sh

#Initializing the variable to contain the directory of un-trimmed fastq files 
fastqPath="data/rawreads/"
#Initializing the variable to contain the suffix for the left reads
leftSuffix=".R1.fastq"
#Loop through all the left-read fastq files in $fastqPath
for leftInFile in $fastqPath*$leftSuffix
do
    #Print $leftInFile to see what it contains
    echo $leftInFile
    #Removing the path from the filename and assign to pathRemoved
    pathRemoved="${leftInFile/$fastqPath/}"
    #Printing $pathRemoved to see what it contains after removing the path
    echo $pathRemoved
    #Removing the left-read suffix from $pathRemoved and assign to suffixRemoved
    suffixRemoved="${pathRemoved/$leftSuffix/}"
    #Printing $suffixRemoved to see what it contains after removing the path
    echo $suffixRemoved
done
