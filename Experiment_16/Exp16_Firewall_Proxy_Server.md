# Experiment 16 — Study & installation of Firewall & Proxy Server

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To install and configure an uncomplicated firewall (UFW) and a Squid caching proxy server.

## 2. Theory
1. **Firewall (UFW)**: A user-friendly frontend command interface for managing kernel-level netfilter packet rules. It shields systems by blocking/allowing specific network traffic.
2. **Squid Proxy Server**: A caching proxy for the web supporting HTTP, HTTPS, and FTP. It reduces bandwidth usage, speeds up response times by caching repeated requests, and acts as an access control gateway.

## 3. Implementation Code

```bash
# 1. Firewall (UFW) Setup
sudo apt update && sudo apt install -y ufw

# Set default rule policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specific services and ports
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw allow 8080/tcp

# Enable firewall
sudo ufw --force enable
sudo ufw status verbose

# 2. Proxy Server (Squid) Setup
sudo apt install -y squid

# Configure Squid
# Append rule configurations
sudo tee -a /etc/squid/squid.conf << 'EOF'
# Define local network source
acl localnet_lab src 192.168.1.0/24

# Access permissions
http_access allow localnet_lab
http_access allow localhost
EOF

# Restart Squid proxy service
sudo systemctl restart squid && sudo systemctl enable squid

# 3. Verify Proxy Port listening (Squid defaults to 3128)
ss -tlnp | grep 3128
```

## 4. Expected Output

```text
Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), disabled (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW IN    Anywhere                  
80/tcp                     ALLOW IN    Anywhere                  
8080/tcp                   ALLOW IN    Anywhere                  

LISTEN 0      4096         *:3128            *:*            users:(("squid",pid=1234,fd=11))
```

## 5. Viva / Discussion Questions
1. **What is UFW, and how does it relate to the Linux kernel firewall?**
2. **What commands set default policy block settings in UFW?**
3. **What is the default port utilized by the Squid proxy server?**
4. **How do you configure a Linux CLI client to channel traffic through a proxy?**
5. **Which log files capture firewall block reports and proxy web hits?**

---

[Back to Main Index](../README.md)
