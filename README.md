# Zabbix in Linode

Zabbix is project aiming to deploy Zabbix on Linode instance in containers as per [Zabbix Docs](https://www.zabbix.com/documentation/current/en/manual/installation/containers).

## Stack

This project uses the following stack to configure zabbix on linode instance:

* Docker compose - docker compose project basic structure provided in [Zabbix Docker](https://github.com/zabbix/zabbix-docker).
* Terrform - to provision linode instance 
* Ansible - to configure all dependencies and deploy linode

### Structure

The project structure consists of:

* app - Zabbix configurations
* infrastructure - Infrastructure as Code folder configurations

### How to run

Execute setup.sh script

```sh
>_ ./setup.sh

```

Before running the script make sure you've installed all required binaries: terraform and ansible.

# Contributing
Contributions are welcome! Please open an issue or submit a pull request to this project.

# License
This project is licensed under the MIT License.


