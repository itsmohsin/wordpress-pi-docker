#!/bin/bash
set -e

# Load environment variables
set -a
source .env
set +a

echo "[+] Deploying WordPress stack"
docker compose pull
docker compose up -d

echo "[+] Running containers:"
docker ps
