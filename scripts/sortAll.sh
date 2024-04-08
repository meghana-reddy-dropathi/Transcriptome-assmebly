#!/usr/bin/env bash
# sortAll.sh
# path to sam files
samPath="results/sam/"
# variable storing the suffix of sam file
samSuffix=".sam"
# path of output bam directory that stores bam filesr
bamPath="results/bam/"
# variable storing the suffix of bam file
bamSuffix=".sorted.bam"
# making the bam directory in the results repository
mkdir -p $bamPath
function sortAll {
    for alignedFile in $samPath*$samSuffix
    do
          #removes path from filename with no replacement
          removedPath="${alignedFile/$samPath/}"
          #removes the suffix and only gives the sample names
          sampleName="${removedPath/$samSuffix/}"
          samtools sort \
          $samPath$sampleName$samSuffix \
          -o $bamPath$sampleName$bamSuffix
    done
}
sortAll

