export dicom_dir=/Volumes/catherine_team/DataSortedForBIDS/PS-Sorted
export bids_dir=/Volumes/catherine_team/Project_Folders/Preschool/preschool_bids
export config=/Volumes/catherine_team/DataSortedForBIDS/preschool_config.json

dcm2bids --forceDcm2niix --clobber \
 -d $dicom_dir/${1}/ses-${2} \
 -p ${1} \
 -s ${2} \
 -c $config \
 -o $bids_dir

