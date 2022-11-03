#!/bin/bash

set -x
set -e
set -u

set -o pipefail

test -n "$1"

echo $1 | base64 -d | zenity --text-info
