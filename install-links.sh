#!/bin/sh

set -xeu

R=$(readlink -f $(pwd))

find ${R} -mindepth 2 -maxdepth 2 -executable -type f -exec ln -fs {} ~/.local/bin \;
ls -go ~/.local/bin | grep "$R"

