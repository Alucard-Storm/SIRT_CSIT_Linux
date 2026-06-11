# Experiment 15 — Implementation of DNS and LDAP Services

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To install and configure Domain Name System (DNS) via BIND9 and directory access services via OpenLDAP.

## 2. Theory
1. **Domain Name System (DNS)**: Translates human-readable names (like `example.com`) to computer-readable IP addresses. **BIND9** is the standard DNS software on Linux. Zone records include:
   - **SOA (Start of Authority)**: Primary zone configuration details.
   - **NS (Name Server)**: Specifies authoritative name servers.
   - **A (Address)**: Points hostnames to IPv4 addresses.
2. **OpenLDAP**: An open-source implementation of the Lightweight Directory Access Protocol (LDAP). It provides centralized user authentication and directory structures using hierarchal Directory Information Trees (DIT) defined in **LDIF** (LDAP Data Interchange Format) files.

## 3. Implementation Code

```bash
# 1. DNS (BIND9) Installation and Configuration
sudo apt update && sudo apt install -y bind9 bind9utils bind9-doc

# Add domain configuration zone
sudo tee -a /etc/bind/named.conf.local << 'EOF'
zone "example.com" {
    type master;
    file "/etc/bind/db.example.com";
};
EOF

# Create zone record file db.example.com
sudo tee /etc/bind/db.example.com << 'EOF'
$TTL    604800
@       IN      SOA     ns1.example.com. admin.example.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns1.example.com.
ns1     IN      A       192.168.1.10
www     IN      A       192.168.1.10
EOF

# Restart DNS server
sudo systemctl restart bind9

# 2. LDAP Setup
# Installation (non-interactive slapd)
echo "slapd slapd/no_dns_configuration boolean true" | sudo debconf-set-selections
sudo apt install -y slapd ldap-utils

# Create basic DIT base configuration structure
cat << 'EOF' > base.ldif
dn: ou=people,dc=example,dc=com
objectClass: organizationalUnit
ou: people

dn: ou=groups,dc=example,dc=com
objectClass: organizationalUnit
ou: groups
EOF

# Create an LDAP user account configuration
cat << 'EOF' > user.ldif
dn: uid=jdoe,ou=people,dc=example,dc=com
objectClass: inetOrgPerson
uid: jdoe
cn: John Doe
sn: Doe
mail: jdoe@example.com
userPassword: password123
EOF

# Check DNS using dig lookup
dig @localhost www.example.com +short
```

## 4. Expected Output

```text
192.168.1.10
```

## 5. Viva / Discussion Questions
1. **What does BIND stand for, and what service does it provide?**
2. **Explain the difference between A, AAAA, and CNAME records in DNS.**
3. **What does LDAP stand for, and what is the purpose of LDIF files?**
4. **What is the function of the `dig` command?**
5. **What is the difference between a DNS zone and a DNS domain?**

---

[Back to Main Index](../README.md)
