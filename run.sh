#/bin/bash
# Executes all experiments after each other.
# Should be run on the experiment machine.

for experiment in $(ls experiments); do
    pushd experiments/$experiment
    comunica-bencher prepare-data
    comunica-bencher run-local
    popd
done
