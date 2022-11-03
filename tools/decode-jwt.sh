#!/bin/sh

# set -x
set -e
set -u

(
echo Header:
echo $1 | cut -d. -f1 | base64 -d 2>/dev/null | jq || true
echo

echo Payload:
echo $1 | cut -d. -f2 | base64 -d 2>/dev/null | jq || true
echo
) | zenity --text-info



