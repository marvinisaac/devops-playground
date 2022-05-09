# VM Setup Steps

## Core VM
1. Install Ubuntu 20.04 LTS
2. Setup SSH access
3. Setup node with Ansible
    ```
    ansible-playbook ./playbook/setup-ubuntu.yaml -K \
        -e "target=local_core host_name=core user=marvin ip=192.168.1.235"
    ```
4. Setup services
    ```
    ansible-playbook ./playbook/setup-core.yaml -K \
        -e "target=local_core user=marvin database_password=<password> slack_webhook=<url>"
    ```

## Apps VM
1. Install Ubuntu 20.04 LTS
2. Setup SSH access
3. Setup node with Ansible
    ```
    ansible-playbook ./playbook/setup-ubuntu.yaml -K \
        -e "target=local_apps host_name=apps user=marvin ip=192.168.1.236"
    ```
4. Setup services
    ```
    ansible-playbook ./playbook/setup-apps.yaml -K \
        -e "target=local_apps user=marvin token=<token>"
    ```
