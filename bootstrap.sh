#!/usr/bin/env bash

# Fix path
###PATH=${HOME}/.local/bin:${PATH}
###
#### Updates, Upgrades and packages
###sudo apt update
###sudo apt install -y software-properties-common python3-pip python3-venv ohai

# Setup Ansible
# Pinned version, need to automate upgrade testing
if [[ ! -f ~/.venv ]]; then
    python3 -m venv .venv
fi

. .venv/bin/activate

pip install -r requirements.txt
## Assuming passwordless sudo
ansible-galaxy install -f -r roles/dots/collections.yml
ansible-playbook -i hosts setup.yml -K

deactivate

## Setup pre-commit
pre-commit install

exit 0
