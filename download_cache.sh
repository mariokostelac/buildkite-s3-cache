#!/usr/bin/env bash

source set_environment.sh

echo "--- download the cache"
mkdir -p ${CACHE_DIR}
aws s3 cp s3://${BUCKET_PATH}/${LAST_COMMON_ON_MASTER}.tgz ${CACHE_ROOT_DIR}/${LAST_COMMON_ON_MASTER}.tgz
if [[ -e ${CACHE_ROOT_DIR}/${LAST_COMMON_ON_MASTER}.tgz ]]; then
  tar zxf ${CACHE_ROOT_DIR}/${LAST_COMMON_ON_MASTER}.tgz -C ${CACHE_DIR}
  echo "--- cache ready in ${CACHE_DIR}"
else
  echo "--- cache not found"
fi

