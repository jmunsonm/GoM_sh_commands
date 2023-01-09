#PBS -N GTDB_GoM_SAGs
#PBS -q normal
#PBS -M jmunson-mcgee@bigelow.org
#PBS -m bea
#PBS -l ncpus=92,mem=450GB,walltime=24:55:00
#PBS -o /mnt/scgc/simon/microg2p/analyses/GORG_classifier_update/GoM_GTDB.OU

module use /mod/scgc/
module load anaconda3
source activate gtdbtk_2.1.1

#Change this path to whatever file you run it from.
cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis


# Modify the genome_dir and the out-dir flags and this command should work for GTDB
gtdbtk classify_wf --genome_dir /mnt/scgc/simon/microg2p/Data/GoM_uploads/SAG_contigs --out_dir /mnt/scgc/simon/microg2p/analyses/GORG_classifier_update/GoM/gtdb_2.1.0_classify_wf_out --cpus 92 -x fasta


