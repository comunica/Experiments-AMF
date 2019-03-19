# Comunica Bencher Experiment — Client Algorithms

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_CLIENT_CONFIG` | `MATRIX_DATASET_SCALE` |
|-|-|-|
| combination_0 | `client-config-none.json` | `10` |
| combination_1 | `client-config-bgp-combined.json` | `10` |
| combination_2 | `client-config-none.json` | `100` |
| combination_3 | `client-config-bgp-combined.json` | `100` |
| combination_4 | `client-config-none.json` | `1000` |
| combination_5 | `client-config-bgp-combined.json` | `1000` |

## Usage

Generate the dataset and queries:

```bash
$ comunica-bencher prepare-data
```

Run the experiment locally:

```bash
$ comunica-bencher run-local
```

The `output/` directories of each combination will now contain all experiment results.
