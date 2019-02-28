# Comunica Bencher Matrix Experiment

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_SERVER_CACHE_NGINX` | `MATRIX_SERVER_CACHE_AMF` |
|-|-|-|
| combination_0 | `true` | `true` |
| combination_1 | `false` | `true` |
| combination_2 | `true` | `false` |
| combination_3 | `false` | `false` |

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
