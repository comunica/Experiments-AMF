# Comunica Bencher Experiment — AMF Filter types

This experiment was created with [Comunica Bencher](https://github.com/comunica/comunica-bencher).
To run this experiment, Comunica Bencher must be [installed](https://github.com/comunica/comunica-bencher#usage).

## Combinations

This experiment consists of multiple combinations, which,
after running `comunica-bencher prepare-data`, can be found in the `combination_*` folders.

| | `MATRIX_SERVER_FILTER` | `MATRIX_CLIENT_CONFIG` |
|-|-|-|
| combination_0 | `BloomFilter` | `client-config-none.json` |
| combination_1 | `GCSFilter` | `client-config-none.json` |
| combination_2 | `BloomFilter` | `client-config-triple.json` |
| combination_3 | `GCSFilter` | `client-config-triple.json` |
| combination_4 | `BloomFilter` | `client-config-bgp.json` |
| combination_5 | `GCSFilter` | `client-config-bgp.json` |
| combination_6 | `BloomFilter` | `client-config-triplebgp.json` |
| combination_7 | `GCSFilter` | `client-config-triplebgp.json` |

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
