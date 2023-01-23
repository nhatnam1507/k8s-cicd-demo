working_dir=$(dirname $(realpath $0))
cd ${working_dir}
docker compose down
docker compose up -d