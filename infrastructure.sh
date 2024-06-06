#!/bin/sh

terraform -chdir="infrastructure" init

terraform -chdir="infrastructure" plan -var-file="vars.tfvars"

terraform -chdir="infrastructure" apply -var-file="vars.tfvars"

terraform -chdir="infrastructure" output -raw server_host > .server_host

echo "linode_server ansible_host=$(eval cat .server_host)" > hosts

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i hosts -e 'ansible_user=root' -e "ansible_password=$(eval terraform -chdir="infrastructure" output -raw linode_password)" playbook.yml