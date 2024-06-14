# opex-comparison
Compares the speed of the OPEX JSON libraries. The size of the virtual environment is
output as well.


## Setup

Run the following script to set up the environments:

```bash
./setup.sh
```

## Comparison

Run the following script to compare the different versions:

```bash
./run.sh
```

The script can take up to two arguments:

1. JSON file to use (default: `image.json`)
2. number of timeit runs (default: `10`)

## Example output

```
opex
from_string 4.817561445001047
to_string 1.4682756529946346
18M	./opex

fast-opex
from_string 0.024294675997225568
to_string 0.022574107017135248
7.7M	./fast-opex

fast-opex_w_orjson
from_string 0.014092327008256689
to_string 0.002413242997135967
8.1M	./fast-opex_w_orjson
```
