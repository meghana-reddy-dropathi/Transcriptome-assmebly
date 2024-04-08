#!/usr/bin/env bash
# indexAll.sh
# path to bam 
# path to bam directory
bamPath="results/bam/"
# suffix of bam files
bamSuffix=".sorted.bam"

function indexAll {
    for SortedFile in $bamPath*$bamSuffix
    do
          #removes path from filename with no replacement
          Pathremoved="${SortedFile/$bamPath/}"
          #removes the suffix and only gives the sample names
          SampleName="${Pathremoved/$bamSuffix/}"
          samtools index \
          $bamPath$SampleName$bamSuffix
    done
}
indexAll

