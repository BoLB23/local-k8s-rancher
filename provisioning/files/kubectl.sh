alias kubectl="docker exec -it $(docker ps | grep 'rancher/rancher'|awk '{print $1}') kubectl"

function print_login {
    echo '#########################################################'
    echo '            LOCAL K8S ENVIRONMENT           '
    kubectl cluster-info
    echo -e "\nYou can access Rancher UI at https://localhost:443"
    echo '#########################################################' 
}

print_login