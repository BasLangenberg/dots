#!/usr/bin/env bash

apt update
apt upgrade -y
apt install -y git tmux zsh vim python3 python3-pip
pip3 install --upgrade ansible molecule
ansible-galaxy install -r roles/requirements.yml
ansible-playbook -i hosts setup.yml

pre-commit install
