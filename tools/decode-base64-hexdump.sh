#!/bin/bash

set -x
set -e
set -u

set -o pipefail

test -n "$1"

echo $1 | base64 -d | hexdump -C --no-squeezing | zenity --text-info --font=FreeMono --width=800 --height=600

