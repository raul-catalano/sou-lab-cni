# sou-lab-cni (macOS m2)

Deploy HAProxy, Prometheus and Grafana in containerized environment (docker).
HaProxy will operate as reverse proxy and SSL termination for Prometheus and Grafana.

## Requirements

- Docker Desktop
- Ansible

## Installation

``` sh
ansible-galaxy collection install -r ./sou-lab-cni/roles/sou_docker/requirements.yml
ansible-playbook -b -K ./sou-lab-cni/playbook.yml
```

## Post-Installation

``` sh
sudo sh -c 'echo "127.0.0.1 grafana.local" >> /etc/hosts'
sudo sh -c 'echo "127.0.0.1 prometheus.local" >> /etc/hosts'
```
