working_dir=$(dirname $(realpath $0))
kubeconfig_file="${working_dir}/kube-config.yml"
kubectl config view --flatten > ${kubeconfig_file}
export KUBECONFIG_FILE=${kubeconfig_file}
export KUBECTL_EXEC=$(which kubectl)
cd ${working_dir}
docker compose down
docker compose up -d