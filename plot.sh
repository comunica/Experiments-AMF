#/bin/bash
# Create experiment result plots
# Should be run on the analysis machine.

for experiment in "caching"; do
    flags=""
    if [ "$experiment" = "caching" ]; then
        flags="$flags --log-y --legend-pos 1.135,0.98"
    fi
    if [ "$experiment" = "client_algos" ]; then
        flags="$flags --legend-pos 1.08,1"
    fi
    combinations=combination_*
    if [ "$experiment" = "probabilities" ]; then
        combinations="combination_0 combination_2 combination_4 combination_6 combination_7"
    fi
    pushd results/$experiment
    comunica-bencher plot queries -q '^C' -n plot_c --no-legend $flags $combinations && tex2svg plot_c.tex
    comunica-bencher plot queries -q '^[^C]' -n plot_no_c $flags $combinations && tex2svg plot_no_c.tex
    popd
done

pushd results/delay
comunica-bencher plot queries -q '^C' -n plot_none_c --no-legend combination_0 combination_1 combination_2 combination_3 && tex2svg plot_none_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_none_no_c combination_0 combination_1 combination_2 combination_3 && tex2svg plot_none_no_c.tex
comunica-bencher plot queries -q '^C' -n plot_triple_c --no-legend combination_4 combination_5 combination_6 combination_7 && tex2svg plot_triple_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_triple_no_c --legend-pos 0.96,0.98 combination_4 combination_5 combination_6 combination_7 && tex2svg plot_triple_no_c.tex
comunica-bencher plot queries -q '^C' -n plot_bgp_c --no-legend combination_8 combination_9 combination_10 combination_11 && tex2svg plot_bgp_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_bgp_no_c combination_8 combination_9 combination_10 combination_11 && tex2svg plot_bgp_no_c.tex
popd

pushd results/server_metadata_enabled
comunica-bencher plot queries -q '^C' -n plot_cached_c --no-legend combination_0 combination_1 combination_2 combination_3 combination_4 && tex2svg plot_cached_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_cached_no_c combination_0 combination_1 combination_2 combination_3 combination_4 && tex2svg plot_cached_no_c.tex
comunica-bencher plot queries -q '^C' -n plot_notcached_c --no-legend combination_5 combination_6 combination_7 combination_8 combination_9 && tex2svg plot_notcached_c.tex
comunica-bencher plot queries -q '^[^C]' -n plot_notcached_no_c combination_5 combination_6 combination_7 combination_8 combination_9 && tex2svg plot_notcached_no_c.tex
popd


pushd results/client_algos
comunica-bencher plot dief time combination_* && tex2svg dief_time.tex
comunica-bencher plot query_times F3 combination_* && tex2svg query_times_F3.tex
popd