# Comunica Bencher Experiment — Client Algorithms

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_WARMUP_ROUNDS` |
|-|-|
| combination_0 | `0` |
| combination_1 | `1` |

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
