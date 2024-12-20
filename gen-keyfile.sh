#!/bin/bash

KEYFILE_DIR="."
KEYFILE="$KEYFILE_DIR/keyfile"

mkdir -p $KEYFILE_DIR

if [ ! -f "$KEYFILE" ]; then
    echo "Generating new keyfile..."
    openssl rand -base64 756 > "$KEYFILE"
    chmod 400 "$KEYFILE"
fi