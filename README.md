# Probe Finder Pipeline 

- mismatch_tm_candidates.R find the probes that pass through melting temperature and mismatch.
- blastn the candidate probes
- final_probes.R decides the most suitable probes that have passed above filters based on user-defined parameters. 


## To run Probe_Finder
1. Blast need to be installed and BlastDB needs to be built using relevant genomes that is required to be removed.
2. Change file path in find_baits.sh script within code_dir folder and gene_probes.sh scripts within main folder.
3. Exactly add relevant information into probe.txt.
4. Run gene_probes.sh script.

Any specific question can be directed to naung.m@wehi.edu.au
