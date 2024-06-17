# opex-comparison
Compares the speed of the OPEX JSON libraries. The size of the virtual environment is
output as well.

Libraries compared:

* [opex](https://github.com/WaikatoLink2020/objdet-predictions-exchange-format)
* [fast-opex](https://github.com/waikato-datamining/fast-opex)
* [fast-opex](https://github.com/waikato-datamining/fast-opex) with [orjson](https://github.com/ijl/orjson) backend


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
from_file 4.896808718011016
from_string 4.788844366004923
to_string 1.4709006830235012
to_string_indent2 1.6097621250082739
19M	./opex

fast-opex
from_file 0.022091199993155897
from_string 0.021762415999546647
to_string 0.020520321995718405
to_string_indent2 0.1399811829905957
8.2M	./fast-opex

fast-opex_w_orjson
from_file 0.01409881902509369
from_string 0.0144687729771249
to_string 0.002522158989449963
to_string_indent2 0.003538827004376799
8.6M	./fast-opex_w_orjson
```
