#!/bin/bash

set -e

docker run \
    -it \
    --rm \
    -v ./web:/web
    csg-workon/web:0.1 \
    /bin/zsh
