# Local K8S Rancher environment

This repo creates a local VM running docker and Rancher Management Plane to quickly test Rancher and/or Kubernetes.

## Prerequisites

You will need access to the internet, plus Vagrant installed on your host machine.

Additionally you should clone this repo to your host machine.

```bash
git clone https://github.com/BoLB23/local-k8s-rancher.git
```

## Usage

```bash
cd local-k8s-rancher
vagrant up
```

After several minutes your VM should spin up and the provision ansible playbook should run.

Once this is complete. SSH into your vagrant VM to ensure rancher and docker is up.

```bash
vagrant ssh

docker ps

kubectl get nodes
kubectl get ns
```

Log into the rancher UI (optional).

<https://localhost:443/login>


## Contributing
Pull requests are welcome. 