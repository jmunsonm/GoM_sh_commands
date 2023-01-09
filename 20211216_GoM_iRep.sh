#!/bin/bash
## set name of PBS job
#PBS -N GoM_iRep
## set the queue
#PBS -q scgc-route
#PBS -l walltime=24:00:00
#PBS -l mem=100G
#PBS -l ncpus=33
#PBS -m bea
#PBS -M jmunson-mcgee@bigelow.org
#PBS -o /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/iREP/


cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/iREP/
module purge
module use /mod/scgc/
module load anaconda3/2019.07

source activate iRep 

iRep -f iREP_SAGs/*.fasta -s Recruitment_bams/*.sam -o iRep_out/GoM_irep_results

conda deactivate
