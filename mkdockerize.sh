#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# First argument is the command to execute (produce or serve)
COMMAND="$1"
shift

# Source directory (default: /src)
SRC=${1:-/src}
# Output directory (default: /site)
OUT=${2:-/site}

# Check the command and execute accordingly
if [ "$COMMAND" = "produce" ]; then
    # Build the MkDocs site using the specified configuration file
    mkdocs build -f "$SRC/mkdocs.yml" -d "$OUT"
elif [ "$COMMAND" = "serve" ]; then
    # Serve the site using Python's HTTP server
    cd "$OUT"
    python3 -m http.server 8000 --bind 0.0.0.0
else
    # Exit with error if the command is invalid
    exit 1
fi