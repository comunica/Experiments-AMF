# Comunica Bencher Matrix Experiment

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_SERVER_PROBABILITY` |
|-|-|
| combination_0 | `0.001` |
| combination_1 | `0.008` |
| combination_2 | `0.015` |
| combination_3 | `0.125` |
| combination_4 | `0.25` |
| combination_5 | `0.5` |

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
