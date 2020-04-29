#!/bin/bash

probe_metadata= /Probe_Finder/probe.txt

bash_file= /Probe_Finder/code_dir/find_baits.sh

while IFS= read -r line
do
	echo "$line"
	${bash_file} ${line}
	
done < "$probe_metadata"
