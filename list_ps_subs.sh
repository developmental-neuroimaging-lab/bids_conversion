#!/bin/bash
# reads through sorted dicoms folder and writes list of subjects and sessions for dcm2bids conversion
# view and manually sort as needed before running loop_run_dcm2bids_ps.sh

cd /Volumes/catherine_team/DataSortedForBIDS/PS-Sorted
for i in $(ls /Volumes/catherine_team/DataSortedForBIDS/PS-Sorted)
do
	echo $i $(ls -1 ${i}) >> /Volumes/catherine_team/DataSortedForBIDS/bids_conversion/ps_subs_all.txt
done
