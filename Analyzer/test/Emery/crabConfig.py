import CRABClient
from CRABClient.UserUtilities import config



config = config()

config.General.requestName = 'hscp_gluino_1800GeV_2017_TapeRecall'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'HSCParticleProducerAnalyzer_2018_SignalMC_cfg.py'
config.JobType.pyCfgParams = ['YEAR=2017', 'TapeRecallOnly=True']
config.JobType.inputFiles = ['template_2017MC_v5.root','template_2018MC_v5.root','MuonTimeOffset.txt']

#config.Data.inputDataset = '/HSCPgluino_M-1800_TuneCP5_13TeV-pythia8/RunIISummer20UL18RECO-106X_upgrade2018_realistic_v11_L1v1-v2/AODSIM'
config.Data.inputDataset = '/HSCPgluino_M-1800_TuneCP5_13TeV-pythia8/RunIISummer20UL17RECO-106X_mc2017_realistic_v6-v2/AODSIM'
config.Data.inputDBS = 'global'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 3
config.Data.outLFNDirBase ='/store/user/enibigir/test'

config.Site.storageSite = 'T2_CH_CERN'
