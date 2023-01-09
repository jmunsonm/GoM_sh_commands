#!/bin/bash
## set name of PBS job
#PBS -N GoM_recruit
## set the queue
#PBS -q scgc-route
#PBS -l walltime=24:00:00
#PBS -l mem=100G
#PBS -l ncpus=33
#PBS -m bea
#PBS -M jmunson-mcgee@bigelow.org
#PBS -o /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/iREP/


cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/iREP/
mmodule purge
module use /mod/scgc/
module load anaconda3/2019.07

source activate bowtie2 


#bowtie2-build /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/iREP/Most_complete_genome_per_genus.fasta largest_SAG_per_genus -f


#bowtie2 -x largest_SAG_per_genus --interleaved /mnt/scgc/simon/microg2p/Data/DNA_seq/merged_DNA_seq_runs_201014_201029/ALL_20181030_contf_pe_bbmerge_reads.fastq.gz -S Recruitment_bams/20181030_metagenome_bt2_to_longest_genome_per_SAG.sam  --reorder --end-to-end --threads 32
bowtie2 -x largest_SAG_per_genus --interleaved /mnt/scgc/simon/microg2p/Data/DNA_seq/merged_DNA_seq_runs_201014_201029/ALL_20190402_contf_pe_bbmerge_reads.fastq.gz -S Recruitment_bams/20190402_metagenome_bt2_to_longest_genome_per_SAG.sam  --reorder --end-to-end --threads 32
bowtie2 -x largest_SAG_per_genus --interleaved /mnt/scgc/simon/microg2p/Data/DNA_seq/merged_DNA_seq_runs_201014_201029/ALL_20190709_contf_pe_bbmerge_reads.fastq.gz -S Recruitment_bams/20190709_metagenome_bt2_to_longest_genome_per_SAG.sam  --reorder --end-to-end --threads 32


conda deactivate
