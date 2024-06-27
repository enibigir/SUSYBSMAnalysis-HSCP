#!/bin/bash

infile=file:236673F3-65E3-A745-AEFE-DBED7237EDF1.root
outfile=HSCPgluino_M-1800_fromAOD_ref.root

if [ ! -f 236673F3-65E3-A745-AEFE-DBED7237EDF1.root ]; then
	scp enibigir@lxplus.cern.ch:/eos/user/e/enibigir/data/HSCP/store/mc/RunIISummer20UL18RECO/HSCPgluino_M-1800_TuneCP5_13TeV-pythia8/AODSIM/106X_upgrade2018_realistic_v11_L1v1-v2/80000/236673F3-65E3-A745-AEFE-DBED7237EDF1.root .
fi
cmsRun HSCParticleProducerAnalyzer_cfg.py inputFiles=$infile outputFile=$outfile maxEvents=$1
