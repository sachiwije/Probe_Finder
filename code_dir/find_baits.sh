#!/bin/bash

fasta_file=$1
gene_name=$2
gene_chr=$3
gene_start=$4
gene_end=$5
outdir= Probe_Sequences
codedir= code_dir

#module load anaconda3
source activate blast

cd  Probe_Finder/

Rscript ${codedir}/mismatch_tm_candidates.R ${fasta_file} ${gene_name} ${gene_chr} ${gene_start} ${gene_end} ${outdir}

blastn -query ${outdir}/${gene_name}_probes_candidates.fasta -task 'blastn' -db "Blast_DB/PfBaits" -out /dev/stdout -outfmt "6 qseqid length" -perc_identity 50 -evalue 1000 -culling_limit 10 -dust 'no' | awk '{if ($2>=100) tot[$1]++;} END {for (query in tot) {if (tot[query]==1) print query;}}' > ${outdir}/${gene_name}_blast_candidates.txt

Rscript ${codedir}/final_probes.R ${fasta_file} ${gene_name} ${gene_chr} ${gene_start} ${gene_end} ${outdir}

rm ${outdir}/${gene_name}_probes_candidates.fasta
