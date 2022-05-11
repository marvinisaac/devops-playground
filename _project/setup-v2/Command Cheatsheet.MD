# Command Cheatsheet

## Ansible
- Run command in `sudo` mode: `ansible-playbook {playbook} -K`
- Set variables in the playbook: `ansible-playbook -e "{var}={value} {var}={value} ..."

## Ubuntu
- Check machine's IP address: `ip a`
- Modify hosts file: `nano /etc/hosts`
- Modify SSH config: `nano ~/.ssh/config`
