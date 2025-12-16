#!/bin/bash
set -e

# Load environment variables
set -a
source .env
set +a

if [ -z "$1" ]; then
  echo "Usage: ./restore.sh <backup-file.sql>"
  exit 1
fi

echo "[+] Restoring database from $1"
cat "$1" | docker exec -i wp_db \
  mysql -u root -p"$MYSQL_ROOT_PASSWORD" wordpress

echo "[+] Restore complete"
