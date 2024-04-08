#!/usr/bin/env bash
# alignAll.sh
# Usage: bash scripts/allignAll.sh 1>results/logs/alignAll.log 2>results/logs/alignAll.err &

# Initializing the variable to contain the directory of trimmed paired fastq files 
inputPath="data/trimmed/paired/"
# Initializing the variable to contain the suffix
leftSuffix=".R1.fastq"
rightSuffix=".R2.fastq"
samPath="results/sam/"
samsuffix=".sam"
mkdir -p $samPath
function alignAll {
    for pairedTrimmedFile in $inputPath*$leftSuffix
    do
        # Removing the path from the filename and assign to pathRemoved
        pathRemoved="${pairedTrimmedFile/$inputPath/}"
        # Removing the left-read suffix from $pathRemoved
        SampleName="${pathRemoved/$leftSuffix/}"
        gsnap \
        -A sam \
        -D data \
        -d AiptasiaGmapDb \
        -N 1 \
        $inputPath$SampleName$leftSuffix \
        $inputPath$SampleName$rightSuffix \
        1>$samPath$SampleName$samsuffix 
    done
} 
alignAll
        
