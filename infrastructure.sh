#!/bin/sh

terraform -chdir="infrastructure" init

terraform -chdir="infrastructure" plan -var-file="vars.tfvars"

terraform -chdir="infrastructure" apply -var-file="vars.tfvars"

terraform -chdir="infrastructure" output -raw server_host >> .server_host

echo "linode_server ansible_host=$(eval cat .server_host)" >> hosts