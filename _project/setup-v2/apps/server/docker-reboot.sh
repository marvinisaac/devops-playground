#! /bin/sh

# Set directory where the docker-compose.yaml file is
cd /home/marvin/apps

# Call the file itself, cron can't handle "docker-compose"
/usr/local/bin/docker-compose down --remove-orphans
/usr/local/bin/docker-compose up -d
