#!/bin/bash
# run a batch of subjects through MRS bids conversion
# subjects file is a text file containing the columns:
# sub- ses- study_code scanID
# the subjects file is created by pulling this info from the MRS data tracking log on OneDrive
# Meaghan Perdue
# May 2024

subjects=mrs_subs.txt

while read i; do
    sh mrs_to_bids.sh ${i}
    done <"$subjects"