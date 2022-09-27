#!/usr/bin/env bash

# Updates, Upgrades and packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y git tmux zsh vim python3

# Pip fixes & Ansible setup
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
pip3 install cryptography --upgrade
pip3 install pyOpenssl --upgrade

pip3 install --upgrade ansible molecule

# Magic
~/.local/bin/ansible-galaxy install -r roles/requirements.yml
~/.local/bin/ansible-playbook -i hosts setup.yml -K

# Setup pre-commit
pre-commit install

exit 0
