#/bin/bash
# Create experiment result plots
# Should be run on the analysis machine.

for experiment in $(ls results); do
    pushd results/$experiment
    comunica-bencher plot queries -q '^C' -n plot_c combination_* && tex2svg plot_c.tex
    comunica-bencher plot queries -q '^[^C]' -n plot_no_c combination_* && tex2svg plot_no_c.tex
    popd
done

pushd results/delay
comunica-bencher plot queries -q '^C' -n plot_none_c combination_0 combination_1 combination_2 combination_3 && tex2svg plot_none_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_none_no_c combination_0 combination_1 combination_2 combination_3 && tex2svg plot_none_no_c.tex
comunica-bencher plot queries -q '^C' -n plot_triple_c combination_4 combination_5 combination_6 combination_7 && tex2svg plot_triple_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_triple_no_c combination_4 combination_5 combination_6 combination_7 && tex2svg plot_triple_no_c.tex
comunica-bencher plot queries -q '^C' -n plot_bgp_c combination_8 combination_9 combination_10 combination_11 && tex2svg plot_bgp_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_bgp_no_c combination_8 combination_9 combination_10 combination_11 && tex2svg plot_bgp_no_c.tex
popd