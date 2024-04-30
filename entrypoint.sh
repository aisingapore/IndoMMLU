#!/bin/bash

set -euo pipefail

python indommlu/evaluate.py "$@"
