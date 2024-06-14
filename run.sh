#!/bin/bash
# Can take up to two arguments
# 1. JSON file to use (default: image.json)
# 2. number of timeit runs (default: 10)

# executes the run.py script using the specified environment
# "venv_dir" env variable contains the name of the environment
function run()
{
  echo "$venv_dir"
  ./$venv_dir/bin/python run.py $ARGS
  du -hs ./$venv_dir
  echo
}

ARGS=$@

venv_dir="opex"
run

venv_dir="fast-opex"
run

venv_dir="fast-opex_w_orjson"
run
