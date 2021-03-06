#$-V
#$-cwd
#$-S /bin/bash
#$-N g4cry_XXXXPARAM1
#$-o logs/$JOB_NAME.stdout$JOB_ID
#$-e logs/$JOB_NAME.stderr$JOB_ID
#$-q serial
#$-P grid

#   XSHFIT 0 for camera 1,  -40000 in mm= -40mm for camera 2, 40000 for camera 3
export G4CRYXSHIFT=0     # in mm
export G4CRYYSHIFT=0     # in mm
export G4CRYZSHIFT=1500  # in mm
export G4CRYPCUT=1    # in MeV
#export G4CRYOUTFILE=B4job1Room200cm100ev_XXXXPARAM1
export CRYRANDOMSEED=1236
# env
export DYLD_LIBRARY_PATH=/Applications/root_v6.18.00/lib

/Users/ttumuon/hep/g4/g4user/MuonSC8/rp/v4/sim/Darwin-clang/exampleB4a -m runG4CRYbatchrp_run01.mac

for file in /Users/ttumuon/hep/g4/g4user/MuonSC8/rp/v4/sim
do
  mv muonTree01.root muonTree06_$1deg_$2sim$3.root
done

. muonSetupMac2.sh
#cd ../ana
#. runanaMany02rp.sh $1 $2 $3
