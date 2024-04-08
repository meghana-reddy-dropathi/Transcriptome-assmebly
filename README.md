# Module 7 Assignment

## Author

Meghana Reddy Dropathi

## Date created 

20-03-2023

## Prerequisites 

1. Make sure to create the results and data directory with reads before running the scripts in the main repositry( for example, make the results and data directories in module-07-meghana-dropathi if these aren't present.)

2. Make sure you create a rawreads directory in the data directory to store the files containing the sequence.

3. Make sure to be on a compute node before the scripts are run

## Methods

### Building AiptasiaGmapDb 

GMAP database was created to perform a speedy alignment.

### Trimming of Reads

Raw reads were downloaded into the data directory. These raw reads were quality trimmed using trimmomatic[1]. The trimmed reads were sent into two directories called as paired and unpaired. Trimmomatic for this assignment used paired end reads which is determined by the parameter 'PE'. The input files were provided from the rawreads directory in the data directory. The output files were created in paired and unpaired directories. These are used for further analysis.

### Aligning reads

The reads were aligned using GSNAP[2]. GSNAP used the database that was created from AipBuild.sh. We specified the parameter '-d' as the database name and '-D' as 'data' directory where the AiptasiaGmapDb database exists. The sam files were stored in the sam directory in results directory.

### Sorting reads

The reads were sorted using samtools sort[3]. The sorted bam files were stored in the bam directory.

### Indexing reads

The reads were indexed using samtools index[3]. The accesory files of sorted bam are present in bam directory.

## Contents

- scripts
- results
- data

## Conclusions

We have aligned RNAseq Reads to a reference. We can observe that GSNAP allows us to align the reads to a reference genome which we build using the script AipBuild.sh. The aligned reads are stored as sam files in the sam directory which is in the results directory. Samtools has reduced our work by helping us in sorting and indexing the reads to create the bam files. Further analysis of our assembly can be done using IGV(Integrative Genomics Viewer). We can also conclude that all the scripts are running correctly due to the log and err files that are created and also the result files like bam, sam and so on. We have aligned the reads and these can be used for further analysis or assembly.

## Running the batched job

sbatch scripts/sbatch/sbatch_alignRNAseq.sh

## References

[1] Bolger, A. M., Lohse, M., & Usadel, B. (2014). Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics (Oxford, England), 30(15), 2114–2120. https://doi.org/10.1093/bioinformatics/btu170

[2] Wu, T. D., Reeder, J., Lawrence, M., Becker, G., & Brauer, M. J. (n.d.). GMAP and GSNAP for Genomic Sequence Alignment: Enhancements to Speed, Accuracy, and Functionality. Statistical Genomics, 283–334. https://doi.org/10.1007/978-1-4939-3578-9_15

[3] Li, H., Handsaker, R. E., Wysoker, A., Fennell, T., Ruan, J., Homer, N., Marth, G., Abecasis, G., & Durbin, R. (2009). The Sequence Alignment/Map Format and SAMtools. https://doi.org/10.1093/bioinformatics/btp352
