# Monolith Setup

## Priority List and Notes
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
2. Portainer (via Docker Compose)
3. Cloudflare Tunnel (via Portainer GitOps)
    - Access Portainer via FQDN instead of IP + port
    - Aside from username + password, must be protected via Cloudflare firewall rules
4. API gateway
    - Config is built into the image via custom Dockerfile
5. Database
    - Named volumes will be real volumes for DigitalOcean version
6. Scheduler
    - Run database backup every 6 hours
