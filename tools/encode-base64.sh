#!/bin/bash

set -x
set -e
set -u

set -o pipefail

test -n "$1"

echo -n $1 | base64 --wrap=0 | zenity --text-info
