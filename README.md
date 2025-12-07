# DevSecOps Trainee Project – Ranas Security

This repository contains four small tasks designed to test basic DevSecOps skills:

- **Task 1:** Bash log checker script  
- **Task 2:** Non-root Docker container running an environment info script  
- **Task 3:** Git workflow + documentation  
- **Task 4:** Simple DevSecOps reasoning + CI pipeline  

---

## Task 1 — Log Checker (Bash)

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

## Task 2 — Docker + Non-root Execution

- The container runs a simple script that prints:

- current username

- current working directory

- the APP_ENV variable (or a default)



