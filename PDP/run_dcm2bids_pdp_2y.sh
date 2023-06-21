# run dicom2bids for 1 subject/session
# if running dcm2bids in a conda environment, make sure to activate the environment first, e.g. conda activate dcm2bids
# run by run_dcm2bids_ps.sh subject id
# or use loop dcm2bids script over a batch of subjects using loop_run_dcm2bids_ps.sh
# change directories and config files to use for other studies
## AS OF JUNE 2023, the dicom directories and pdp_2y_config file do NOT include T1w images, these will need to be added after processing for the special sequence
# script by Meaghan Perdue, June 2023

export dicom_dir=/Volumes/catherine_team/MRI_Data/1_Dicoms_for_BIDS_Conversion/PDP
export bids_dir=/Volumes/catherine_team/MRI_Data/2_BIDS_Datasets/PDP
export config=/Volumes/catherine_team/MRI_Data/bids_conversion/PDP/pdp_2y_config.json

dcm2bids --forceDcm2niix --clobber \
 -d $dicom_dir/${1}/*_03m \
 -p ${1} \
 -s 02y \
 -c $config \
 -o $bids_dir

