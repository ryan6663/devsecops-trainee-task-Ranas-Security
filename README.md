# DevSecOps Trainee Project – Ranas Security
### Repository structure
├── log_checker.sh

├── example.log

├── env_info.py

├── Dockerfile

├── SECURITY_NOTES.md

├── README.md

└── .github/workflows/ci.yml

This repository contains four small tasks designed to test basic DevSecOps skills:

This project is part of the DevSecOps trainee evaluation for Ranas Security.
## Requirements 

Linux (local or VM).

Bash

Docker

GitHub account
## Tasks overview 
- **Task 1:** Linux and Bash (log checker) 
- **Task 2:** Simple container and non-root run 
- **Task 3:** Git workflow + documentation  
- **Task 4:** Short written reasoning (DevSecOps thinking)

---

## Task 1 — Linux and Bash (log checker)

The script `log_checker.sh` prints:

- total number of lines  
- number of lines with `INFO`  
- number of lines with `WARN`  
- number of lines with `ERROR`  
- clear error if file does not exist  
- non-zero exit codes on errors  

### Run:

```bash
./log_checker.sh example.log

```
- Note: before you run the command you should give a Permissions to log_checker.sh

```bash
chmod +x log_checker.sh
```
## Task 2 — Simple container and non-root run 

In this task we need to install and start the Docker before we start:

### To install 
```bash
apt install docker.io -y
```

### To start 
```bash
systemctl start docker

systemctl enable docker
```
The container runs a simple script that prints:

- current username

- current working directory

- the APP_ENV variable (or a default)

### Build:

```bash
docker build -t info-script-image .

```

### Run:

```bash
docker run --rm info-script-image
```
### Run with APP_ENV :

```bash
docker run --rm -e APP_ENV=production info-script-image
```

- Note: before you run the command you should give a Permissions to log_checker.sh

```bash
chmod +x info_script.sh
```

