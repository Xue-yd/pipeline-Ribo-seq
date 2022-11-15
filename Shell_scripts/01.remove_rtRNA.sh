#!/usr/bin/bash

# this script uses bowtie to align reads to remove rRNA/tRNA.
# input: trimmed reads
# output: unaligned reads
# ref: rRNA + tRNA

source variables.sh

for i in $ribo_sample
do
	bowtie -x $rtRNA_index -p 10 -1 $adapter_trim_dir/${i}_trimmed_r1.fq -2 $adapter_trim_dir/${i}_trimmed_r2.fq --un-conc $rtRNA_dir/${i}_rmr_%.fq -S $rtRNA_dir/${i}.rRNA.sam 1> $log_dir/${i}_rm_rtRNA_log.txt 2>&1
	rm $rtRNA_dir/${i}.rRNA.sam
done
