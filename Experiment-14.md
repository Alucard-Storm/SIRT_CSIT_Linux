# Experiment 14: Installation of SAMBA, APACHE, and TOMCAT

## 1. SAMBA Installation

### Installation:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install samba

# RHEL/CentOS
sudo dnf install samba
```

### Configuration:
1. Edit /etc/samba/smb.conf
2. Create share:
```
[share_name]
path = /path/to/share
browseable = yes
read only = no
```
3. Set password:
```bash
sudo smbpasswd -a username
```
4. Restart service:
```bash
sudo systemctl restart smbd
```

## 2. APACHE Installation

### Installation:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install apache2

# RHEL/CentOS
sudo dnf install httpd
```

### Configuration:
1. Start service:
```bash
sudo systemctl start apache2  # Ubuntu
sudo systemctl start httpd    # RHEL
```
2. Enable on boot:
```bash
sudo systemctl enable apache2  # Ubuntu
sudo systemctl enable httpd    # RHEL
```

## 3. TOMCAT Installation

### Prerequisites:
1. Install Java:
```bash
sudo apt install default-jdk  # Ubuntu
sudo dnf install java-11-openjdk-devel  # RHEL
```

### Installation:
1. Download Tomcat:
```bash
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.x/bin/apache-tomcat-9.0.x.tar.gz
```

2. Extract and install:
```bash
sudo tar xzvf apache-tomcat-*tar.gz -C /opt/
sudo ln -s /opt/apache-tomcat-9.0.x /opt/tomcat
```

3. Configure environment:
```bash
export CATALINA_HOME=/opt/tomcat
```

4. Start Tomcat:
```bash
$CATALINA_HOME/bin/startup.sh
```

### Security Considerations:
- Set proper file permissions
- Configure firewalls
- Use SSL/TLS
- Regular updates
- Backup configurations

Note: Replace version numbers with latest stable releases when installing.
