# SECURITY_NOTES
.

---

## Risks of running random Docker images:

1. **Malware or viruses:** The image may contain malicious software that can harm your system.  
2. **Privilege escalation:** Some images may try to gain root access on your host.  
3. **Data leaks:** Malicious images may access sensitive files on your machine.  
4. **Vulnerable software:** Images may have outdated packages with security vulnerabilities.  
5. **Hidden crypto-miners or bots:** Some images run hidden background processes.  
6. **Untrusted sources:** Unknown sources may provide compromised images.

---

## How to reduce these risks:

1. **Use official images:** Prefer images from trusted publishers (Docker Hub official images).  
2. **Check image history:** Inspect the Dockerfile and layers before running.  
3. **Run as non-root:** Avoid running containers as root.  
4. **Limit container permissions:** Use flags like `--read-only` and `--cap-drop`.  
5. **Keep images updated:** Regularly pull updates and security patches.  
6. **Scan images:** Use tools like Trivy or Docker Scout to scan for vulnerabilities.  
7. **Isolate containers:** Use networks and volumes carefully to avoid exposing host data.

