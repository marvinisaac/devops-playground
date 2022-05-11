# Monolith Setup

## Priority List
1. Server (via Ansible)
    ```
    ansible-playbook \
        ./playbook/setup-ubuntu-proxmox.yaml \
        -K \
        -e "\
            target=new \
            host_name=monolith \
            user=marvin ip=192.168.1.253 \
            interface=ens18 \
        "
    ```
