#!/bin/bash

infile=file:/eos/user/e/enibigir/data/HSCP/store/mc/RunIISummer20UL18RECO/HSCPgluino_M-1800_TuneCP5_13TeV-pythia8/AODSIM/106X_upgrade2018_realistic_v11_L1v1-v2/80000/236673F3-65E3-A745-AEFE-DBED7237EDF1.root
outfile=HSCPgluino_M-1800_fromAOD_ref.root


cmsRun HSCParticleProducerAnalyzer_cfg.py inputFiles=$infile outputFile=$outfile maxEvents=$1
