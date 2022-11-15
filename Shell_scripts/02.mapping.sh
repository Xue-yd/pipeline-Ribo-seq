#!/usr/bin/bash

# this script uses bowtie to align reads to longest cds transcriptome.
# input: trimmed reads
# output: unaligned reads
# ref: longest cds transcriptome

source variables.sh

for i in $ribo_sample
do
	bowtie -x $ref_index -p 10 --norc -1 $rtRNA_dir/${i}_rmr_1.fq -2 $rtRNA_dir/${i}_rmr_2.fq -v 2 -m 1 -a --best --strata -S $map_dir/${i}.sam 1> $log_dir/${i}_mapping_log.txt 2>&1
	samtools view $map_dir/${i}.sam -bS -o $map_dir/${i}.bam
	samtools sort -l 9 $map_dir/${i}.bam -o $map_dir/${i}.sorted.bam
	rm $map_dir/${i}.sam $map_dir/${i}.bam
done