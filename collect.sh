#/bin/bash
# Collect all experimental results in tar files.
# Should be run on the experiment machine.

for experiment in $(ls experiments); do
    pushd experiments/$experiment
    comunica-bencher collect
    popd
done
