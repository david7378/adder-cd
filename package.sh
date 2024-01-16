#!/bin/bash

# exit on error
set -e

# latest version if no exist version parameter.

# make sure chmod +x ./package.sh

VERSION=${1:-latest}

docker build -f adder.dockerfile -t david737/adder.py:${VERSION} .
