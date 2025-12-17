# WordPress on Raspberry Pi (Docker)

## What this project does
This project helps you run a **WordPress website** on a **Raspberry Pi** using **Docker**.

It automatically:
- Starts WordPress and its database
- Keeps your website data safe
- Lets you back up and restore the website
- Restarts services if something crashes

You do **not** need to install WordPress, PHP, or MySQL manually.

---

## Who this is for
- Beginners learning DevOps or Docker
- Anyone who wants a low-cost WordPress setup
- Home-lab or practice projects

---

## What you get
- A working WordPress website
- Data that does not get deleted on restart
- Simple commands to manage the site
- Automatic recovery if the database stops

---

## Requirements
- Raspberry Pi 3 (or higher)
- DietPi OS (or any Linux on Raspberry Pi)
- Internet connection
- SSH access

---

## Project structure
**wordpress-pi-devops**/
* /docker-compose.yml
* /.env.example (rename file to .env and update credentials)
* /README.md
* /scripts/ install_docker.sh deploy.sh backup.sh restore.sh
* /backups/


---

## Setup steps (very simple)

### 1. Install Docker (run once)
```bash
./scripts/install_docker.sh
```
Reboot after this step.

## 2. Configure environment
cp .env.example .env


Edit .env if needed.

## 3. Start WordPress
./scripts/deploy.sh

## 4. Open the website

Find your Raspberry Pi IP:

hostname -I

## 5. Complete WordPress setup in the browser.
http://<raspberry_pi_ip>:8080

### Backup the website
./scripts/backup.sh


This saves the database in the backups/ folder.

### Restore the website
./scripts/restore.sh backups/db_<timestamp>.sql


Use this if data is lost or corrupted.

If something breaks

Docker automatically restarts the services.
Your data stays safe because it is stored outside containers.

## Notes

This is a learning and demo project

Not meant for production use

.env file should NOT be uploaded to GitHub

## Thank You
