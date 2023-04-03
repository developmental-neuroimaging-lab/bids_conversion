#run a batch of subjects through bids conversion
# if running dcm2bids in a conda environment, make sure to activate the environment first, e.g. conda activate dcm2bids
#ps_subs.txt is a text file containing 2 columns: 
# col1=subject ID (no "sub-")
# col2=session ID (with "ses-")
# script by Meaghan Perdue, April 2023

for i in $(cat ps_subs.txt); do
    sh run_dcm2bids_ps ${i}
    done