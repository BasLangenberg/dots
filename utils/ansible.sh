#!/usr/bin/env bash

PLAYBOOK_DIR=/tmp/playbook

git clone https://github.com/BasLangenberg/arch-install.git $PLAYBOOK_DIR
cd $PLAYBOOK_DIR
ansible-playbook -i hosts --tags install setup.yml
ansible-playbook -i hosts setup.yml

exit 0
