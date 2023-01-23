working_dir=$(dirname $(realpath $0))
cd ${working_dir}
export SSH_PORT=2222
docker compose down
docker compose up -d