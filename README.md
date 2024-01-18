# sou-lab-cni (WIP)

Install HaProxy, Prometheus and Grafana in containerized environment (docker) on . 
HaProxy will operate as SSL termination and reverse proxy for Prometheus and Grafana.

## Requirements

- Docker Desktop
- Ansible
- mkcert

## Installation

```
ansible-galaxy collection install -r ./sou-lab-cni/roles/sou_docker/requirements.yml
ansible-playbook -b -K ./sou-lab-cni/playbook.yml
```
