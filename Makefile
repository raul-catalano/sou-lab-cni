VENV_DIR = venv
PYTHON = $(VENV_DIR)/bin/python
PIP = $(VENV_DIR)/bin/pip
ANSIBLE_CMD = $(VENV_DIR)/bin/ansible-playbook
ANSIBLE_GALAXY_CMD = $(VENV_DIR)/bin/ansible-galaxy

.DEFAULT_GOAL := install

.PHONY: install create-venv install-ansible install-requirements run-playbook

install: create-venv install-ansible install-roles run-playbook

create-venv:
	@echo "Creating virtual environment..."
	@python3 -m venv $(VENV_DIR)

activate-venv:
	@echo "Activating virtual environment..."
	@. $(VENV_DIR)/bin/activate

install-ansible: create-venv activate-venv
	@echo "Installing Ansible..."
	@$(PIP) install ansible

install-roles: create-venv activate-venv
	@echo "Installing Ansible role requirements"
	@$(ANSIBLE_GALAXY_CMD) collection install -r roles/sou_docker/requirements.yml

run-playbook: create-venv activate-venv
	@echo "Running Ansible playbook..."
	@$(ANSIBLE_CMD) -i localhost -b -K playbook.yml

clean:
	@echo "Cleaning up..."
	@rm -rf $(VENV_DIR)
