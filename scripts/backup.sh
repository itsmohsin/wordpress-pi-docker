#!/bin/bash
set -e

# Load environment variables
set -a
source .env
set +a

BACKUP_DIR=backups
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

mkdir -p $BACKUP_DIR

echo "[+] Creating database backup"
docker exec wp_db \
  mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" wordpress \
  > $BACKUP_DIR/db_$TIMESTAMP.sql

echo "[+] Backup stored at $BACKUP_DIR/db_$TIMESTAMP.sql"
