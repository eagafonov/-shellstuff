#!/bin/sh
set -x
set -e

IMAGE=$1
shift

CMD=${@:-${SHELL:-/bin/sh}}

if [ -z "$CMD" ]; then
	CMD=/bin/sh
fi

docker run --rm -ti --user=${U:-root} $IMAGE $CMD
