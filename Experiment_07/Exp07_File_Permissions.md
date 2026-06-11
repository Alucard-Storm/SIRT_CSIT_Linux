# Experiment 07 — Changing File Permissions

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To understand and modify Unix/Linux file permissions using the `chmod` command.

## 2. Theory
Unix/Linux manages file security using three permission levels:
- **Read (r)**: View file content / List directory content.
- **Write (w)**: Edit file content / Create or delete files in directory.
- **Execute (x)**: Run file as program or script / Enter directory.

Permissions apply to three user tiers: **User/Owner (u)**, **Group (g)**, and **Others (o)**.
They are modified using **`chmod`** (change mode) via two methods:
1. **Symbolic Method**: E.g., `chmod u+x file` (adds execute to owner).
2. **Numeric (Octal) Method**: E.g., `chmod 755 file` (`rwxr-xr-x`).
   - Read (r) = 4, Write (w) = 2, Execute (x) = 1. Add numbers to get permission value.

## 3. Implementation Code

```bash
# Create dummy file
touch secure.txt
ls -l secure.txt

# 1. Symbolic Permission Modifications
chmod u+x secure.txt                # Add execute to user
chmod g-w secure.txt                # Remove write from group
chmod o=r secure.txt                # Set others to read-only
chmod a+x secure.txt                # Add execute to everyone
ls -l secure.txt

# 2. Octal Permission Modifications
chmod 755 secure.txt                # Owner: rwx, Group: r-x, Others: r-x
ls -l secure.txt
chmod 644 secure.txt                # Owner: rw-, Group: r--, Others: r--
ls -l secure.txt
chmod 700 secure.txt                # Owner: rwx, Group: none, Others: none
ls -l secure.txt

# 3. Special Permissions (SUID, SGID, Sticky Bit)
chmod u+s secure.txt                # Enable SUID (execute with owner privileges)
chmod g+s secure.txt                # Enable SGID (inherit directory group)
mkdir shared_dir
chmod +t shared_dir                 # Enable Sticky Bit (only owner can delete files)
ls -ld shared_dir
```

## 4. Expected Output

```text
-rw-r--r-- 1 ubuntu ubuntu 0 Jun 11 14:50 secure.txt
-rwxr-xr-x 1 ubuntu ubuntu 0 Jun 11 14:50 secure.txt
-rwxr-xr-x 1 ubuntu ubuntu 0 Jun 11 14:50 secure.txt
-rw-r--r-- 1 ubuntu ubuntu 0 Jun 11 14:50 secure.txt
-rwx------ 1 ubuntu ubuntu 0 Jun 11 14:50 secure.txt
drwxrwxrwt 2 ubuntu ubuntu 4096 Jun 11 14:50 shared_dir
```

## 5. Viva / Discussion Questions
1. **What do the octal numbers 7, 5, and 4 represent in `chmod 754`?**
2. **How do you add execute permissions for only the owner of a file symbolically?**
3. **What is the purpose of the sticky bit, and where is it commonly used?**
4. **What is the difference between SUID and SGID permissions?**
5. **Why is using `chmod 777` on a file in a production server a security risk?**

---

[Back to Main Index](../README.md)
