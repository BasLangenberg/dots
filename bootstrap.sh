#!/usr/bin/env bash

apt update
apt upgrade -y
apt install -y git tmux zsh vim python3 python3-pip
pip3 install ansible
ansible-playbook -i hosts setup.yml
