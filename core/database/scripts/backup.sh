#!/bin/sh

#Remove older backup directory
PAST_DATE=$(date -d '- 3 days' +'%Y-%m-%d')
PAST_BACKUP_LOCATION='/backup/'$PAST_DATE
rm -rf $PAST_BACKUP_LOCATION

# Create backup directory for the day
DATE=$(date +'%Y-%m-%d')
BACKUP_LOCATION='/backup/'$DATE
rm -rf $BACKUP_LOCATION
mkdir $BACKUP_LOCATION

# Run backup
mariabackup --backup \
   --target-dir=$BACKUP_LOCATION \
   --user=root --password=$MARIADB_ROOT_PASSWORD
