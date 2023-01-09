#PBS -N GTDB_GoM_SAGs
#PBS -q scgc-normal
#PBS -M jmunson-mcgee@bigelow.org
#PBS -m bea
#PBS -l ncpus=64,mem=450GB,walltime=24:55:00
#PBS -o /mnt/scgc/simon/microg2p/Data/RNA_seq/GoM_merged_reads

module use /mod/scgc/
module load anaconda3
source activate gtdbtk_1.5.0

#Change this path to whatever file you run it from.
cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis


# Modify the genome_dir and the out-dir flags and this command should work for GTDB
gtdbtk classify_wf --genome_dir /mnt/scgc/simon/microg2p/Data/SAG_contigs/cryo_RSG_contigs --out_dir gtdb/cryo_RSG_gtdb_1.5_classify_wf_out --cpus 64 -x fasta


