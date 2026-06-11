# Experiment 04 — Appending and Splitting Files

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To perform file manipulation operations: appending content and splitting a large file into multiple smaller files.

## 2. Theory
1. **Appending**: The `>>` redirection operator appends stdout to the end of a file, keeping the original content intact (unlike `>` which overwrites).
2. **Splitting**: The `split` command breaks a file into smaller files.
   - **`-l`**: Split by number of lines per file.
   - **`-b`**: Split by number of bytes.
   - **`-n`**: Split into a fixed number of chunks.
   By default, output files are suffixed with `aa`, `ab`, `ac`, etc.

## 3. Implementation Code

```bash
# 1. Append 10 more lines to wlcc.txt
cat >> wlcc.txt << 'EOF'
Linux is a Unix-like operating system.
It is open source and free.
Many distributions are available.
Ubuntu is a popular Linux distribution.
Red Hat is for enterprise use.
Debian is very stable.
Fedora is cutting edge.
Arch Linux is for advanced users.
Linux Mint is user friendly.
CentOS is enterprise focused.
EOF

# 2. View the combined file contents and verify lines
wc -l wlcc.txt

# 3. Split the file into parts of 5 lines each
split -l 5 wlcc.txt split_file_

# 4. View contents of the split files
ls -la split_file_*
cat split_file_aa
cat split_file_ab
cat split_file_ac

# 5. Alternative splitting by bytes or chunks
split -b 100 wlcc.txt byte_split_   # Split into 100-byte parts
split -n 3 wlcc.txt chunk_split_     # Split into 3 equal parts
```

## 4. Expected Output

```text
15 wlcc.txt
-rw-r--r-- 1 ubuntu ubuntu 192 Jun 11 14:50 split_file_aa
-rw-r--r-- 1 ubuntu ubuntu 196 Jun 11 14:50 split_file_ab
-rw-r--r-- 1 ubuntu ubuntu 210 Jun 11 14:50 split_file_ac
Linux is a Unix-like operating system.
It is open source and free.
Many distributions are available.
Ubuntu is a popular Linux distribution.
Red Hat is for enterprise use.
```

## 5. Viva / Discussion Questions
1. **What is the difference between `>` and `>>` operators?**
2. **How does the `split` command name output files by default?**
3. **How do you split a file into parts of 1 kilobyte each using `split`?**
4. **If a file has 15 lines and you split it with `split -l 5`, how many files are created and what are their names?**
5. **How can you specify a custom suffix length for split output files?**

---

[Back to Main Index](../README.md)
