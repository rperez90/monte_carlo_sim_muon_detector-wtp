#Usage: . move.sh name

cp $1.sh /Users/ttumuon/hep/g4/g4user/MuonSC8/rp/v5/sim/$1_og.sh

cd /Users/ttumuon/hep/g4/g4user/MuonSC8/rp/v5/sim/ 

rm $1.sh

mv $1_og.sh $1.sh

echo $1.sh has been moved to $PWD

cd /Users/ttumuon/hep/g4/g4user/MuonSC8/rp/v4_og/sim

echo Back in $PWD!
