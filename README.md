# Probe Finder Pipeline 

- mismatch_tm_candidates.R find the probes that pass through melting temperature and mismatch.
- blastn the candidate probes
- final_probes.R decides the most suitable probes that have passed above filters based on user-defined parameters. 


## To run Probe_Finder
1. Blastn need to be installed and Blast_DB  needs to be downloaded.
2. Change file path in find_baits.sh script within code_dir folder and gene_probes.sh scripts within main folder.
3. Exactly add relevant information into probe.txt as shown.
4. Run gene_probes.sh script.

Transferring pipeline into snakemake are underway. Any specific question can be directed to naung.m@wehi.edu.au
