#!/usr/bin/env bash

PLAYBOOK_DIR=/tmp/playbook

git clone https://github.com/BasLangenberg/arch-install.git $PLAYBOOK_DIR
cd $PLAYBOOK_DIR
ansible-playbook -i hosts --tags install arch.yml
ansible-playbook -i hosts arch.yml

exit 0