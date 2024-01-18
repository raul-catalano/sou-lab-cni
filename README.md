# sou-lab-cni (WIP)

Deploy HaProxy, Prometheus and Grafana in containerized environment (docker).
HaProxy will operate as SSL termination and reverse proxy for Prometheus and Grafana.

## Requirements

- Docker
- Ansible

## Installation

``` sh
ansible-galaxy collection install -r ./sou-lab-cni/roles/sou_docker/requirements.yml
ansible-playbook -b -K ./sou-lab-cni/playbook.yml
```
