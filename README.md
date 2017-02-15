# buildkite-s3-cache
Superdumb build cache demo implementation implemented for the purpose of https://medium.com/@mariokostelac/how-we-got-tests-for-200k-lines-ember-application-running-10-minutes-again

```bash
export BUCKET_PATH="<bucket_name>/<path>"
source set_unique_cache_dir.sh
./download_cache.sh
./run_my_tests.sh ${CACHE_DIR}
./upload_cache.sh
```
