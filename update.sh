#!/usr/bin/env bash
echo "Updating system by running dots ansible playbook"
echo "Enter password for sudo:"

. .venv/bin/activate

## Assuming passwordless sudo
ansible-playbook -i hosts setup.yml -K

deactivate

exit 0
