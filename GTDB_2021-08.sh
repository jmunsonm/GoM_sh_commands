#PBS -N GTDB_GoM_SAGs
#PBS -q scgc-normal
#PBS -M jmunson-mcgee@bigelow.org
#PBS -m bea
#PBS -l ncpus=64,mem=450GB,walltime=24:55:00
#PBS -o /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/gtdb

module use /mod/scgc/
module load anaconda3
source activate gtdbtk_1.5.0

cd /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/gtdb


gtdbtk classify_wf --genome_dir /mnt/scgc/simon/microg2p/Data/SAG_contigs/2021-08_SAG_contigs --out_dir /mnt/scgc/simon/microg2p/analyses/20210325_GoM_recluster/20210325_GoM_recluster_analysis/gtdb/202108_SAGs_gtdb_classify_wf_out --cpus 64 -x fasta