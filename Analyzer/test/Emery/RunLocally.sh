#!/bin/bash

: '
- Get all root files in to txt file:

dasgoclient -query="file dataset=/HSCPgluino_M-1800_TuneCP5_13TeV-pythia8/RunIISummer20UL17RECO-106X_mc2017_realistic_v6-v2/AODSIM" > HSCPgluino_M-1800_2017.txt

dasgoclient -query="file dataset=/HSCPgluino_M-1800_TuneCP5_13TeV-pythia8/RunIISummer20UL18RECO-106X_upgrade2018_realistic_v11_L1v1-v2/AODSIM" > HSCPgluino_M-1800_2018.txt
'

REDIRECTOR=root://cms-xrd-global.cern.ch/

CONFIGFILE=HSCParticleProducerAnalyzer_cfg.py

TargetMass=1800
TargetYear=2018

PARAMS=("HSCPgluino_M-1800_2017.txt" "2017" "mg-py_ratio-1800GeV.root")

ListOfFiles=HSCPgluino_M-${TargetMass}_${TargetYear}.txt
PERIOD=${TargetYear}
WEIGHTS=mg-py_ratio-${TargetMass}GeV.root

BASENAME=${ListOfFiles::-4}

i=0
while IFS=, read -r INPUT
do
    ((i=i+1))
    echo ">>> Processing ${INPUT}"
    OUTPUT=${BASENAME}_${i}.root
    echo "cmsRun $CONFIGFILE inputFiles=$REDIRECTOR$INPUT YEAR=$PERIOD outputFile=$OUTPUT MG_FILENAME=$WEIGHTS"
    echo "    DONE"

    if [[ $i -gt 0 ]]; then break; fi
done < $ListOfFiles