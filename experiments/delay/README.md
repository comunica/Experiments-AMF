# Comunica Bencher Experiment — Network delays

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_RATE_LIMIT` | `MATRIX_CLIENT_CONFIG` |
|-|-|-|
| combination_0 | `256k` | `client-config-none.json` |
| combination_1 | `512k` | `client-config-none.json` |
| combination_2 | `2048k` | `client-config-none.json` |
| combination_3 | `4096k` | `client-config-none.json` |
| combination_4 | `256k` | `client-config-triple.json` |
| combination_5 | `512k` | `client-config-triple.json` |
| combination_6 | `2048k` | `client-config-triple.json` |
| combination_7 | `4096k` | `client-config-triple.json` |
| combination_8 | `256k` | `client-config-bgp.json` |
| combination_9 | `512k` | `client-config-bgp.json` |
| combination_10 | `2048k` | `client-config-bgp.json` |
| combination_11 | `4096k` | `client-config-bgp.json` |

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
