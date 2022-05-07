# VM Setup Steps

## Core VM
1. Install Ubuntu 20.04 LTS
2. Setup SSH access
3. Setup node with Ansible
    ```
    ansible-playbook ./playbook/setup-ubuntu.yaml -K \
        -e "target=core host_name=core user=marvin ip=192.168.1.235"
    ```

## Apps VM
1. Install Ubuntu 20.04 LTS
2. Setup SSH access
3. Setup node with Ansible
    ```
    ansible-playbook ./playbook/setup-ubuntu.yaml -K \
        -e "target=apps host_name=apps user=marvin ip=192.168.1.236"
    ```
