#!/bin/bash
set -e

chmod 400 /etc/mongo-keyfile/keyfile

exec /usr/local/bin/docker-entrypoint.sh "$@"