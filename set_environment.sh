#!/usr/bin/env bash
CACHE_ROOT_DIR=/tmp

CURRENT_COMMIT=$(git rev-parse HEAD)
LAST_COMMON_ON_MASTER=$(git merge-base HEAD master)

# it is possible that current commit is master
if [[ "${CURRENT_COMMIT}" == "${LAST_COMMON_ON_MASTER}" ]]; then
  LAST_COMMON_ON_MASTER=$(git rev-parse HEAD~1)
fi

if [[ "" == ${CACHE_DIR} ]]; then
  echo "CACHE_DIR not set!"
  exit 1
fi

if [[ "" == ${BUCKET_PATH} ]]; then
  echo "BUCKET_PATH not set!"
  exit 1
fi
