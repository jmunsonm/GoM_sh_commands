#!/bin/bash
## set name of PBS job
#PBS -N megacc
## set the queue
#PBS -q scgc-route
#PBS -l walltime=160:00:00
#PBS -l mem=100G
#PBS -l ncpus=64
#PBS -m bea
#PBS -M jmunson-mcgee@bigelow.org
#PBS -o /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aprA



module use /mod/bigelow
module load megacc


cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aprA

megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aprA/infer_ML_amino_acid.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aprA/aprA_75perc_muscle_align.faa -o megacc_tree_/aprA_tree -f fasta


