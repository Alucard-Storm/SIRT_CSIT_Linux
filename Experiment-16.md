# Experiment 16: Study & Installation of Firewall & Proxy Server

## 1. Firewall (UFW - Uncomplicated Firewall)

### Installation:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install ufw

# RHEL/CentOS (uses firewalld by default)
sudo dnf install firewalld
```

### Basic UFW Configuration:
```bash
# Enable UFW
sudo ufw enable

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specific services
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

# Allow specific ports
sudo ufw allow 8080/tcp

# Check status
sudo ufw status verbose
```

### FirewallD (RHEL/CentOS):
```bash
# Start and enable
sudo systemctl start firewalld
sudo systemctl enable firewalld

# Basic commands
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --add-port=8080/tcp --permanent
sudo firewall-cmd --reload
```

## 2. Proxy Server (Squid)

### Installation:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install squid

# RHEL/CentOS
sudo dnf install squid
```

### Basic Squid Configuration:
1. Edit /etc/squid/squid.conf:
```conf
# Network ACL
acl localnet src 192.168.1.0/24

# Port configuration
http_port 3128

# Access control
http_access allow localnet
http_access deny all

# Basic settings
visible_hostname proxy.example.com
cache_mem 256 MB
maximum_object_size 100 MB
```

2. Start and enable service:
```bash
sudo systemctl start squid
sudo systemctl enable squid
```

### Client Configuration:
1. Environment variables:
```bash
export http_proxy="http://proxy.example.com:3128"
export https_proxy="http://proxy.example.com:3128"
```

2. Browser settings:
   - Proxy Host: proxy.example.com
   - Port: 3128

## Security Best Practices:

1. Firewall:
   - Regular rule audit
   - Logging enabled
   - Default deny policy
   - Regular updates
   - Port scanning detection

2. Proxy:
   - HTTPS support
   - Authentication
   - Access control lists
   - Content filtering
   - Monitoring and logging

### Monitoring:

1. Firewall logs:
```bash
sudo tail -f /var/log/ufw.log
```

2. Squid logs:
```bash
sudo tail -f /var/log/squid/access.log
```

Note:
- Always backup configurations before changes
- Test in development environment first
- Monitor system resources
- Keep security patches up to date
- Document all changes
