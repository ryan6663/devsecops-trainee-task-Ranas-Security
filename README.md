# Log Checker Script (Task 1)

This repository contains a simple Bash script `log_checker.sh` that analyzes log files.

## Usage

```bash
./log_checker.sh example.log

# Simple Container Script (Task 2)

This project demonstrates a basic container running a Bash script as a non-root user.

## Files

- `info_script.sh` – A small Bash script that prints:
  - Current user name
  - Current working directory
  - Value of environment variable APP_ENV (or "default" if not set)
- `Dockerfile` – Builds a container image using a slim base, creates a non-root user, and runs the script.
- `README.md` – This file.

## Build Docker Image

```bash
docker build -t info-script-image .
