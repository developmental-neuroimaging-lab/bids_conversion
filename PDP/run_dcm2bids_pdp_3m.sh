# run dicom2bids for 1 subject/session
# if running dcm2bids in a conda environment, make sure to activate the environment first, e.g. conda activate dcm2bids
# run by run_dcm2bids_ps.sh subject id
# or use loop dcm2bids script over a batch of subjects using loop_run_dcm2bids_ps.sh
# change directories and config files to use for other studies
# script by Meaghan Perdue, May 2023

export dicom_dir=/Volumes/catherine_team/MRI_Data/1_Dicoms_for_BIDS_Conversion/PDP
export bids_dir=/Volumes/catherine_team/MRI_Data/2_BIDS_Datasets/PDP
export config=/Volumes/catherine_team/MRI_Data/bids_conversion/pdp/pdp_3m_config.json

dcm2bids --forceDcm2niix --clobber \
 -d $dicom_dir/${1}/*_03m \
 -p ${1} \
 -s 03m \
 -c $config \
 -o $bids_dir

