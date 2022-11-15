#!/usr/bin/bash

#need to edit variable:
#	ribo_sample rna_sample 
#	ribo_adapor1 ribo_adaptor2 rna_adaptor1 rna_adaptor2
#	work_dir rtRNA_index 
#	ref_index

#sample name
ribo_sample='sample1 sample2 sample3'
rna_sample='sample1 sample2 sample3'

#ribo-seq adapter
ribo_adaptor1=''
ribo_adaptor2=''

#rna-seq adapter
rna_adaptor1=''
rna_adaptor2=''

#parent_dir
work_dir='/path/to/work/dir'
rtRNA_index='/path/to/rtRNA/index'
ref_index='path/to/ref/index'

fastq_dir=${work_dir}/00.fastq
fastqc_dir=${work_dir}/01.fastqc
adaptor_trim_dir=${work_dir}/02.adaptor_trim
log_dir=${work_dir}/99.log
rtRNA_dir=${work_dir}/03.remove_rtRNA
map_dir=${work_dir}/04.mapping
