#Script to read series description from dicoms files for creation of config file for dcm2bids
#writes dicom folder name and series description to a .tsv output file, new runs will append entries to the end of the file
#change output to path of dataset you're working on
#subdir is the path to a subject's main DICOMs folder containing sorted dicoms series directories 
#install pydicom 'pip install pydicom' 

import os
import pydicom

subdir='PATH/TO/SUBJECT/DICOMS'
os.chdir(subdir)
dicoms = os.listdir()
output = '/Volumes/catherine_team/MRI_Data/bids_conversion/PDP/SeriesDescriptions.tsv'

for dcmdir in dicoms:
    os.chdir(dcmdir)
    ds = pydicom.filereader.dcmread(os.listdir()[0])
    print(dcmdir, '\t', ds.SeriesDescription, file=open(output, 'a'))
    os.chdir(subdir)
