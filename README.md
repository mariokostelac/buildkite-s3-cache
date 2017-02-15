```bash
export BUCKET_PATH="<bucket_name>/<path>"
source set_unique_cache_dir.sh
./download_cache.sh
./run_my_tests.sh ${CACHE_DIR}
./upload_cache.sh
```
