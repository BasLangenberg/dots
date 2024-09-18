#!/usr/bin/env bash

# Fix path
PATH=${HOME}/.local/bin:${PATH}

# Updates, Upgrades and packages
sudo apt update
sudo apt install -y software-properties-common

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

# Assuming passwordless sudo
ansible-galaxy install -f -r roles/dots/collections.yml
ansible-playbook -i hosts setup.yml

# Setup pre-commit
pre-commit install

exit 0
