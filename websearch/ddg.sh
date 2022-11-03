#!/bin/bash

set -xeu
set -o pipefail

QUERY=$(python3 -c 'import urllib.parse; import sys; print(urllib.parse.quote(sys.argv[1]))' "${1}")

xdg-open "https://duckduckgo.com/?q=${QUERY}&ia=web"
