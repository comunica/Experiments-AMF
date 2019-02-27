# Comunica AMF Experiments

This repository contains experiments that evaluate the performance of _Approximate Membership Functions (AMFs)_.
On the one hand, AMFs are implemented and exposed in various ways by [`ldf-server`](https://github.com/LinkedDataFragments/Server.js/tree/feature-handlers-amf-2).
On the other hand, different algorithms are implemented for optimizing client-side query evaluation for in [Comunica engines](https://github.com/comunica/comunica-feature-amf).

These experiment were created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
More information on each experiments, and how to run it, can be found inside the README file for each experiment in the [`experiments`](https://github.com/comunica/Experiments-AMF/tree/master/experiments) folder.

## Experiments

* [Filter types](https://github.com/comunica/Experiments-AMF/tree/master/experiments/filter_types): Different AMF filter implementations (Bloom, GCS) are exposed server-side, and different client-side algorithms are tested.
* [Probabilities](https://github.com/comunica/Experiments-AMF/tree/master/experiments/probabilities): Different AMF probabilities are used.
* [In-band vs Out-band](https://github.com/comunica/Experiments-AMF/tree/master/experiments/in_vs_out_band): AMF metadata is exposed either in-band with TPFs, or out-band, which requires an additional HTTP request by the client.
* [Caching](https://github.com/comunica/Experiments-AMF/tree/master/experiments/caching): The effects of caching TPFs and AMF filters are evaluated.

## License
This code is copyrighted by [Ghent University – imec](http://idlab.ugent.be/)
and released under the [MIT license](http://opensource.org/licenses/MIT).
