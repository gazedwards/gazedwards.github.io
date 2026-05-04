#!/usr/bin/env bash

set -euo pipefail

python3 -m venv .venv
. .venv/bin/activate
pip install --upgrade pip
pip install zensical

printf '\nSetup complete.\n'
printf 'Project commands can be run with just, for example: just serve\n'
