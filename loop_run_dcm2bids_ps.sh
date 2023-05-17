#run a batch of subjects through bids conversion
# if running dcm2bids in a conda environment, make sure to activate the environment first, e.g. conda activate dcm2bids
#subjects file is a text file containing 2 columns: 
# col1=subject ID (no "sub-")
# col2=session ID (no "ses-")
# script by Meaghan Perdue, April 2023

subjects=ps_recovered.txt

while read i; do
    sh run_dcm2bids_ps.sh ${i}
    echo ${i} >> ps_subs_done.txt
    done <"$subjects"


