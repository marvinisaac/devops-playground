# DigitalOcean Setup Steps

> This guide assumes the following:
> 1. The server is using Ubuntu 20.04 LTS
> 2. SSH access for `root` is already configured

## Core Server
1. Add the SSH details to `~/.ssh/config`
    > `root` user will be used to set things up
2. Add server to Ansible's inventory `/etc/ansible/hosts` under `[do_new]`
3. Setup with Ansible
    ```
    ansible-playbook ./playbook/setup-digitalocean.yaml \
        -e "target=do_new user=marvin password=<password>"
    ```
4. Update `~/.ssh/config` to use the new user
5. Setup node with Ansible
    ```
    ansible-playbook ./playbook/setup-ubuntu-digitalocean.yaml -K \
        -e "target=do_new user=marvin"
    ```
6. Setup services
    ```
    ansible-playbook ./playbook/setup-core.yaml -K \
        -e "target=do_new user=marvin database_password=<password> slack_webhook=<url>"
    ```
7. Move server from `[do_new]` to `[do_core]`

## Apps Server
1. Add the SSH details to `~/.ssh/config`
    > `root` user will be used to set things up
2. Add server to Ansible's inventory `/etc/ansible/hosts` under `[do_new]`
3. Setup with Ansible
    ```
    ansible-playbook ./playbook/setup-digitalocean.yaml \
        -e "target=do_new user=marvin password=<password>"
    ```
4. Update `~/.ssh/config` to use the new user
5. Setup node with Ansible
    ```
    ansible-playbook ./playbook/setup-ubuntu-digitalocean.yaml -K \
        -e "target=do_new user=marvin"
    ```
6. Setup services
    ```
    ansible-playbook ./playbook/setup-apps.yaml -K \
        -e "target=do_new user=marvin token=<token>"
    ```
7. Move server from `[do_new]` to `[do_apps]`
