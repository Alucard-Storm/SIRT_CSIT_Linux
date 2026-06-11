# Experiment 16 — Study & installation of Firewall & Proxy Server | Notes

---

## Firewalls & Proxies

### UFW (Firewall)
UFW sits on top of **iptables**.
- Default Deny Incoming: Closes all incoming ports to unauthorized requests.
- Default Allow Outgoing: Lets system applications connect outward freely (e.g. for package updates).

### Squid (Proxy)
Acts as an intermediary gateway:
```
[ User Client ] ---> (Port 3128) ---> [ Squid Proxy ] ---> [ Internet Website ]
```
To configure a client terminal to route commands (like `curl` or `wget`) through Squid:
```bash
export http_proxy="http://proxy_ip:3128"
export https_proxy="http://proxy_ip:3128"
```

---

[Back to Main Index](../README.md)
