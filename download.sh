#/bin/bash
# Download experimental results from the experiment server.
# Should be run on the analysis machine.

mkdir -p results
pushd results
for experiment in $(ls ../experiments); do
    rsync -r -av -e "ssh -A -p 4444 -o 'StrictHostKeyChecking=no' ssh.elis.ugent.be ssh -o 'StrictHostKeyChecking=no'" rtaelman@donizetti.elis.ugent.be:/mnt/datastore/data/dslab/experimental/2019_comunica_amf/Experiments-AMF/experiments/$experiment/results.tar.gz ./$experiment.tar.gz
    mkdir -p $experiment
    tar -C $experiment -xvzf $experiment.tar.gz && rm $experiment.tar.gz
done
