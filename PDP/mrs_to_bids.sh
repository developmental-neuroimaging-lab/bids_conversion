#!/bin/bash
# Pipeline for pulling MRS data to BIDS for processing in Osprey
# for PDP data
# must first connect to Rundle /Studies, /BIDS, and /Pfiles folders
# to run this script on a single subject do:
# sh mrs_to_bids.sh sub-NNNNN ses-NN STUDY_CODE ScanID ACC_series## Thal_series## PWM_series##
# arguments MUST be provided in order, the same info should be listed in each row of the subject list for running a batch
# use 2-digit series number(s) with leading 0s if necessary
# to run this script on a batch of subjects, use run_mrs2bids.sh
# Note that MRS processing requires T1 anat data to also be converted to BIDS format, this should be done separately with the other imaging data via dcm2bids
# Meaghan Perdue
# May 2024

# '-1' added to BIDS directory when multiple users are logged in to Rundle simultaneously on the same system, remove if first or only user logged in
export BIDS=/Volumes/BIDS-1/CL_PDP
export MRS=/Volumes/Pfiles

# Create a subject/session folder, mrs sub-folder
mkdir -p $BIDS/${1}/${2}/mrs

# Copy P-file to mrs folder and rename
cp -Rv $MRS/SPECT-EXAM${4}-202*/SERIES*${5}/*.7 $BIDS/${1}/${2}/mrs/${1}_${2}_slaser_acc.7

# Update file permissions to allow full access to mrs data for users with access to the BIDS directory
chmod -R 777 $BIDS/${1}/${2}/mrs