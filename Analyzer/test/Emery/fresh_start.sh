#!/bin/bash

if [ ! -f HSCParticleProducerAnalyzer_cfg.py ]; then
    cp ${CMSSW_BASE}/src/SUSYBSMAnalysis/Analyzer/test/Emery/HSCParticleProducerAnalyzer_cfg.py .
fi
cp ${CMSSW_BASE}/src/SUSYBSMAnalysis/HSCP/data/template_2018MC_v5.root .
cp ${CMSSW_BASE}/src/SUSYBSMAnalysis/HSCP/data/MuonTimeOffset.txt .
