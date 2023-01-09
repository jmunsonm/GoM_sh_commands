#!/bin/bash
## set name of PBS job
#PBS -N gom_aai
## set the queue
#PBS -q normal
#PBS -l walltime=168:00:00
#PBS -l mem=1000G
#PBS -l ncpus=190
#PBS -j oe
#PBS -o /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aai/GoM_SYTO9_comparem.OU

module unload anaconda
module load anaconda3/4.0.0
source activate comparem1

cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aai/
mkdir /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aai/tmp

indir=/mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aai/GoM_Syto9_inputs
outdir=/mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aai/GoM_Syto9_Aug2021_outputs

time comparem aai_wf -x fasta -c 30 --tmp_dir /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/aai/tmp/ $indir $outdir

