# run dicom2bids for 1 subject/session
# if running dcm2bids in a conda environment, make sure to activate the environment first, e.g. conda activate dcm2bids
# run by run_dcm2bids_ps.sh subject sessionnumber
# or use loop dcm2bids script over a batch of subjects using loop_run_dcm2bids_ps.sh
# change directories and config files to use for other studies
# script by Meaghan Perdue, April 2023

export dicom_dir=/Volumes/catherine_team/DataSortedForBIDS/1_Dicoms/PS-Sorted
export bids_dir=/Volumes/catherine_team/DataSortedForBIDS/2_BIDS_Datasets/preschool
export config=/Volumes/catherine_team/DataSortedForBIDS/bids_conversion/preschool_config.json

dcm2bids --forceDcm2niix --clobber \
 -d $dicom_dir/${1}/ses-${2} \
 -p ${1} \
 -s ${2} \
 -c $config \
 -o $bids_dir

