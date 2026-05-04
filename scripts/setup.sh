#!/usr/bin/env bash

set -euo pipefail

python3 -m venv .venv
. .venv/bin/activate
pip install --upgrade pip
pip install mkdocs mkdocs-material

printf '\nSetup complete.\n'
printf 'Activate the environment with: source .venv/bin/activate\n'
