# Experiment 15 — Implementation of DNS and LDAP Services | Notes

---

## DNS & LDAP Directories

### DNS Resolution
DNS acts like a **phonebook**:
- When you type `www.example.com`, your system queries the DNS server (`bind9`).
- The server checks its zone records (`/etc/bind/db.example.com`) and returns the IP address (`192.168.1.10`).

### LDAP Tree Structure
LDAP stores records in a hierarchical **Directory Information Tree (DIT)**:
- **`dc` (Domain Component)**: E.g., `dc=example,dc=com`.
- **`ou` (Organizational Unit)**: E.g., `ou=people`.
- **`cn` (Common Name)**: E.g., `cn=John Doe`.
- **`uid` (User ID)**: E.g., `uid=jdoe`.

LDAP is optimized for rapid reading and search lookups, making it ideal for central login management.

---

[Back to Main Index](../README.md)
