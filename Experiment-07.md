# Experiment 7: Changing File Permissions

## Understanding File Permissions:
- Read (r): 4
- Write (w): 2
- Execute (x): 1

Format: [user][group][others]

## chmod Command Usage:

1. Symbolic Method:
```bash
chmod u+x file    # Add execute permission for user
chmod g-w file    # Remove write permission for group
chmod o=r file    # Set read-only permission for others
chmod a+x file    # Add execute permission for all
```

2. Numeric Method:
```bash
chmod 755 file    # rwxr-xr-x
chmod 644 file    # rw-r--r--
chmod 777 file    # rwxrwxrwx (use carefully!)
```

## Examples:
1. Make a script executable:
```bash
chmod u+x script.sh
```

2. Set full permissions for owner, read/execute for others:
```bash
chmod 755 file
```

3. Remove all permissions for others:
```bash
chmod o-rwx file
```

## Special Permissions:
- SUID (4000): chmod u+s file
- SGID (2000): chmod g+s file
- Sticky Bit (1000): chmod +t directory

Note: Always be careful with chmod 777 as it gives full permissions to everyone, which can be a security risk.
