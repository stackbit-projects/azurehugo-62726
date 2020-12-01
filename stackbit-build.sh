#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://develop.widget.stackbit.com/init.js 5fc627263157050015b07c79

echo "stackbit-build.sh: finished build"
