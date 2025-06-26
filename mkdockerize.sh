#!/bin/bash
set -e

COMMAND="$1"
shift

SRC=${1:-/src}
OUT=${2:-/site}

if [ "$COMMAND" = "produce" ]; then
    mkdocs build -f "$SRC/mkdocs.yml" -d "$OUT"
elif [ "$COMMAND" = "serve" ]; then
    cd "$OUT"
    python3 -m http.server 8000 --bind 0.0.0.0
else
    exit 1
fi