# Experiment 14 — Installation of SAMBA, APACHE, and TOMCAT

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To install, configure, and verify SAMBA server, Apache HTTP server, and Apache Tomcat.

## 2. Theory
Enterprise network services running on Linux include:
1. **SAMBA**: Integrates Linux/Unix servers and Windows clients using the SMB/CIFS protocol to share files and printers.
2. **Apache HTTP Server**: A modular, open-source web server hosting static files or proxying requests.
3. **Apache Tomcat**: An open-source Java Servlet Container hosting Java Server Pages (JSP) and Java Web Apps.

## 3. Implementation Code

```bash
# 1. SAMBA Setup
# Installation
sudo apt update && sudo apt install -y samba samba-common

# Configuration snippet
sudo mkdir -p /srv/samba/public
sudo chmod -R 777 /srv/samba/public
sudo tee -a /etc/samba/smb.conf << 'EOF'
[PublicShare]
   path = /srv/samba/public
   browseable = yes
   read only = no
   guest ok = yes
EOF
sudo systemctl restart smbd && sudo systemctl enable smbd

# 2. Apache Web Server Setup
# Installation
sudo apt install -y apache2

# Start and enable service
sudo systemctl start apache2
sudo systemctl enable apache2

# Verify local page
curl -I http://localhost

# 3. Apache Tomcat Setup (Requires Java JDK)
# Prerequisites
sudo apt install -y default-jdk
java -version

# Fetch and extract Tomcat 9
wget -q https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
sudo tar -xzf apache-tomcat-9.0.58.tar.gz -C /opt/
sudo ln -sf /opt/apache-tomcat-9.0.58 /opt/tomcat

# Start Tomcat server
/opt/tomcat/bin/startup.sh
```

## 4. Expected Output

```text
HTTP/1.1 200 OK
Server: Apache/2.4.58 (Ubuntu)
openjdk version "11.0.22" 2024-01-16
OpenJDK Runtime Environment (build 11.0.22+7-post-Ubuntu-0ubuntu2)
OpenJDK 64-Bit Server VM (build 11.0.22+7-post-Ubuntu-0ubuntu2, mixed mode)
Using CATALINA_BASE:   /opt/tomcat
Using CATALINA_HOME:   /opt/tomcat
Tomcat started.
```

## 5. Viva / Discussion Questions
1. **What is SAMBA, and what networking protocol does it implement?**
2. **What is the location of the main SAMBA configuration file?**
3. **How does the Apache HTTP Web Server differ from Apache Tomcat?**
4. **Which commands start and enable a system service on boot in systemd?**
5. **Why does Apache Tomcat require the Java Development Kit (JDK) to run?**

---

[Back to Main Index](../README.md)
