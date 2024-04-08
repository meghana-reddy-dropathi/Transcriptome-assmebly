#!/usr/bin/env bash
# sortAlign.sh
# Usage: bash scripts/sortAlign.sh 1>results/logs/Aip02.sort.log 2>results/logs/Aip02.sort.err &
# creating bam directory to save bam files
mkdir -p results/bam/
samtools sort \
results/sam/Aip02.sam \
-o results/bam/Aip02.sorted.bam \
