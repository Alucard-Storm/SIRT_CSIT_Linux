# Experiment 15: Implementation of DNS and LDAP Services

## 1. DNS (Domain Name System) Implementation

### BIND Installation:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install bind9 bind9utils

# RHEL/CentOS
sudo dnf install bind bind-utils
```

### Basic DNS Configuration:
1. Edit named.conf:
```conf
zone "example.com" {
    type master;
    file "/etc/bind/zones/example.com.zone";
};
```

2. Create zone file:
```zone
$TTL 86400
@   IN  SOA     ns1.example.com. admin.example.com. (
        2023083001  ; Serial
        3600        ; Refresh
        1800        ; Retry
        604800      ; Expire
        86400       ; Minimum TTL
)
@       IN  NS      ns1.example.com.
@       IN  A       192.168.1.10
www     IN  A       192.168.1.10
```

## 2. LDAP (OpenLDAP) Implementation

### Installation:
```bash
# Ubuntu/Debian
sudo apt install slapd ldap-utils

# RHEL/CentOS
sudo dnf install openldap-servers openldap-clients
```

### Basic Configuration:
1. Configure LDAP:
```bash
sudo dpkg-reconfigure slapd
```

2. Create Base Structure:
```ldif
# base.ldif
dn: ou=people,dc=example,dc=com
objectClass: organizationalUnit
ou: people

dn: ou=groups,dc=example,dc=com
objectClass: organizationalUnit
ou: groups
```

3. Add Structure:
```bash
ldapadd -x -D cn=admin,dc=example,dc=com -W -f base.ldif
```

### Adding Users:
```ldif
# user.ldif
dn: uid=someone,ou=people,dc=example,dc=com
objectClass: inetOrgPerson
uid: someone
cn: John Doe
sn: Doe
mail: someone@example.com
```

### Security Considerations:
1. DNS Security:
   - DNSSEC implementation
   - Access control
   - Regular updates
   - Monitoring

2. LDAP Security:
   - TLS/SSL encryption
   - Access controls
   - Password policies
   - Backup procedures

### Verification Commands:
1. DNS:
```bash
dig @localhost example.com
nslookup example.com localhost
```

2. LDAP:
```bash
ldapsearch -x -b "dc=example,dc=com"
```

Note: 
- Replace example.com with your domain
- Update IP addresses as per your network
- Always backup before making changes
- Keep security patches up to date
