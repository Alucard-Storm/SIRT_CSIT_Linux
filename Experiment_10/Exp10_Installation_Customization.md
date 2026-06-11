# Experiment 10 — Unix/Linux Installation and Customization

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To study, configure, and customize a Unix/Linux operating system installation.

## 2. Theory
Operating system setup consists of:
1. **Pre-installation**: ISO downloads, boot media creation, partition planning.
2. **Installation**: Disk layout (boot, root `/`, swap), user credentials, networking.
3. **Post-installation**: Updating system repository indexes, patching software, configuring files.
   - `/etc/fstab`: Static filesystem mount details.
   - `/etc/passwd`: User account configurations.
   - `/etc/hostname`: Active computer node name.
   - `/etc/hosts`: Local hostname translation lookup table.

## 3. Implementation Code

```bash
# 1. Perform package repository updates and upgrades
# Ubuntu/Debian:
sudo apt update && sudo apt upgrade -y
# RHEL/Fedora:
# sudo dnf update -y

# 2. Install development tools and essential utilities
sudo apt install -y build-essential htop net-tools

# 3. Customizing Shell environment using aliases and variables
cat << 'EOF' >> ~/.bashrc
# Custom Aliases
alias ll='ls -la'
alias update_sys='sudo apt update && sudo apt upgrade -y'

# Custom environment variable
export LAB_MANUAL="Linux-CSIT-505"
EOF

# Load customization changes immediately
source ~/.bashrc

# 4. View critical configuration records
cat /etc/hostname
head -n 5 /etc/passwd
cat /etc/hosts
```

## 4. Expected Output

```text
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Reading package lists... Done
my-linux-vm
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
127.0.0.1	localhost
127.0.1.1	my-linux-vm
```

## 5. Viva / Discussion Questions
1. **What is the function of the `/etc/fstab` configuration file?**
2. **What type of user information is saved in the `/etc/passwd` file?**
3. **How do you update software packages in a Red Hat/Fedora system vs Debian/Ubuntu?**
4. **What is the purpose of the `.bashrc` script, and when does it execute?**
5. **How do you define a command alias in Bash?**

---

[Back to Main Index](../README.md)
