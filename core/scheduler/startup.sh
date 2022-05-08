#!/bin/sh

echo $MARIADB_ROOT_PASSWORD

# Copy config template and add Slack webhook URL
cp /data/config.template /data/config.ini
echo "slack-webhook = \"$SLACK_WEBHOOK\"" >> /data/config.ini

# Start Ofelia
/usr/bin/ofelia daemon --config=/data/config.ini
