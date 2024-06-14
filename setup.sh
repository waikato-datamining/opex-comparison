#!/bin/bash

# initializes the virtual environment
# "venv_dir" env variable contains the name
function init_venv()
{
  echo "Removing old $venv_dir..."
  if [ -d "./$venv_dir" ]
  then
    rm -Rf ./$venv_dir
  fi

  echo "Initializing $venv_dir..."
  python3 -m venv $venv_dir
}

# opex
venv_dir="opex"
init_venv
$venv_dir/bin/pip install opex

# fast-opex
venv_dir="fast-opex"
init_venv
$venv_dir/bin/pip install fast-opex

# fast-opex with orjson
venv_dir="fast-opex_w_orjson"
init_venv
$venv_dir/bin/pip install fast-opex orjson
