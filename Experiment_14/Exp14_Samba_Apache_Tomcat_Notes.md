# Experiment 14 — Installation of SAMBA, APACHE, and TOMCAT | Notes

---

## Service Architecture

### SAMBA
Allows cross-platform file transfers. The config file `/etc/samba/smb.conf` defines folders (`shares`) accessible to Windows machines via UNC paths (e.g. `\\ip_address\PublicShare`).

### Apache2
The default web server in Linux. Its webroot is located at `/var/www/html/` where it serves `index.html` on port 80.

### Tomcat
Compiles Java code on the fly. It runs by default on port 8080. The startup script `/opt/tomcat/bin/startup.sh` sets classpaths and executes the JVM container.

---

[Back to Main Index](../README.md)
