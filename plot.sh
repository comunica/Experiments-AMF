#/bin/bash
# Create experiment result plots
# Should be run on the analysis machine.

for experiment in $(ls results); do
    pushd results/$experiment
    comunica-bencher plot queries -q '^[^C]' -n plot_c combination_* && tex2svg plot_c.tex
    comunica-bencher plot queries -q '^[^C]' -n plot_no_c combination_* && tex2svg plot_no_c.tex
    popd
done
