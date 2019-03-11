# Comunica Bencher Matrix Experiment

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_SERVER_ENABLED_MAX_COUNT` | `MATRIX_SERVER_CACHE_AMF` |
|-|-|-|
| combination_0 | `0` | `true` |
| combination_1 | `1000` | `true` |
| combination_2 | `10000` | `true` |
| combination_3 | `100000` | `true` |
| combination_4 | `1000000` | `true` |
| combination_5 | `0` | `false` |
| combination_6 | `1000` | `false` |
| combination_7 | `10000` | `false` |
| combination_8 | `100000` | `false` |
| combination_9 | `1000000` | `false` |

## Usage

Generate the dataset and queries:

```bash
$ comunica-bencher prepare-data
```

Run the experiment locally:

```bash
$ comunica-bencher run-local
```

The `output/` directories inside each `combination_*` folder will now contain all experiment results.
