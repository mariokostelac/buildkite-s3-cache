#!/usr/bin/env bash
export CACHE_DIR="/tmp/$(git rev-parse HEAD)"
echo "--- set CACHE_DIR=${CACHE_DIR}"
