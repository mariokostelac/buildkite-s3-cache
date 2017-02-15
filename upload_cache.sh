#!/usr/bin/env bash

source set_environment.sh

echo "--- publish the cache to s3"
tar zcf ${CACHE_ROOT_DIR}/${CURRENT_COMMIT}.tgz -C ${CACHE_DIR} .
aws s3 cp ${CACHE_ROOT_DIR}/${CURRENT_COMMIT}.tgz s3://${BUCKET_PATH}/${CURRENT_COMMIT}.tgz
