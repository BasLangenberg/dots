#!/usr/bin/env bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y git tmux zsh vim python3 python3-pip
pip3 install --upgrade ansible molecule
ansible-galaxy install -r roles/requirements.yml
ansible-playbook -i hosts setup.yml -K

pre-commit install
