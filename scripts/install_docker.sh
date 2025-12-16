#!/bin/bash
set -e

echo "[+] Updating system"
sudo apt update && sudo apt upgrade -y

echo "[+] Installing Docker"
curl -fsSL https://get.docker.com | sh

echo "[+] Installing Docker Compose plugin"
sudo apt install docker-compose-plugin -y

echo "[+] Adding user to docker group"
sudo usermod -aG docker $USER

echo "[+] Installation complete. Reboot required."
