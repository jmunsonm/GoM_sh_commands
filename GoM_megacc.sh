#!/bin/bash
## set name of PBS job
#PBS -N megacc
## set the queue
#PBS -q scgc-route
#PBS -l walltime=16:00:00
#PBS -l mem=100G
#PBS -l ncpus=33
#PBS -m bea
#PBS -M jmunson-mcgee@bigelow.org
#PBS -o /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis



module use /mod/bigelow
module load megacc


#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/GoM_5SAG_genera_and_reference_arbsilva_aligned.fa -o tree/GoM_5SAG_genera_and_reference -f Fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML2_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/GoM_5SAG_genera_and_reference_arbsilva_aligned.fa -o tree_ML2/GoM_5SAG_genera_and_reference -f Fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_UPGMA_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/GoM_5SAG_genera_and_reference_arbsilva_aligned.fa -o tree_UPGMA/GoM_5SAG_genera_and_reference -f Fasta

#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML3_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/GoM_5SAG_genera_and_reference_arbsilva_aligned.fa -o tree_ML3/GoM_5SAG_genera_and_reference -f Fasta

#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/GoM_5SAG_genera_and_reference_arbsilva_aligned.fa -o tree_ML4/GoM_5SAG_genera_and_reference -f Fasta


#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/181030_RSG_SSU_rRNA_full_length_SAG_name_only_and_cultures_arbsilva.fa -o tree_ML4/GoM_181030_SAGs_and_reference -f Fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/190402_RSG_SSU_rRNA_full_length_SAG_only_name_and_cultures_arbsilva.fa -o tree_ML4/GoM_190402_SAGs_and_reference -f Fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/190709_RSG_SSU_rRNA_full_length_SAG_only_name_and_cultures_arbsilva.fa -o tree_ML4/GoM_190709_SAGs_and_reference -f Fasta

#2021-09-14

#cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis

#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis/Surface_ocean_Genus_longest_16S_sequence_arbsilva.fa -o megacc_tree_/Surface_ocean_SAGs -f fasta

#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis/AH558_arbsilva.fa -o megacc_tree_/AH-558_tree -f fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis/AH716_arbsilva.fa -o megacc_tree_/AH-716_tree -f fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis/AH736_arbsilva.fa -o megacc_tree_/AH-736_tree -f fasta
#egacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis/AH779_arbsilva.fa -o megacc_tree_/AH-779_tree -f fasta
#megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/Surface_ocean_SAG_analysis/AH883_arbsilva.fa -o megacc_tree_/AH-883_tree -f fasta


cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/Aug2021_16S_trees/


megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/Aug2021_16S_trees/AM377_SSU_1400bp_SILVA_aligned.fa -o trees/AM-377_tree -f fasta
megacc -a /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/infer_ML4_nucleotide.mao -d /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/16S_analysis/Aug2021_16S_trees/AM375_SSU_1400bp_Silva_aligned.fa -o trees/AM-375_tree -f fasta
