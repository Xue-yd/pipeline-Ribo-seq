#!/usr/bin/bash

#this script runs trim_galore on raw fastq files to remove adapter

#read in variables
source variables.sh

#run trim_galore
for i in $ribo_sample
do
	trim_galore --paired -j 4 --quality 20 -a $ribo_adaptor1 -a2 $ribo_adaptor2 --length 20 --fastqc --fastqc_args "--outdir ${fastqc_dir}" -o $adapter_trim_dir $fastq_dir/${i}_r1.fq.gz $fastq_dir/${i}_r2.fq.gz 1> $log_dir/${i}_trim_galore_log.txt 2>&1
done

