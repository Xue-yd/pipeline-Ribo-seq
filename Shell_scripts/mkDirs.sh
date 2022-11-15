#!/usr/bin/bash

# this script uses make dir.

source variables.sh

make $work_dir
make $fastq_dir
mkdir $fastqc_dir
mkdir $adaptor_trim_dir
mkdir $log_dir
mkdir $rtRNA_dir
mkdir $map_dir