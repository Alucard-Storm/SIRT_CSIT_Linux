# Experiment 06 — Finding Inode Numbers

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To find the inode numbers of files using various Linux commands and shell scripts.

## 2. Theory
An **inode** (index node) is a data structure in Unix-style file systems that stores metadata about a file, including:
- File size, owner, group, and permissions
- File type
- Timestamps (creation, modification, access)
- Pointers to actual data blocks on disk

**Crucially, the inode does NOT store the filename.** The filename is stored in directory records, mapped to the inode number.
- `ls -i`: Displays filename and inode.
- `stat`: Displays comprehensive file metadata including inode.
- `find -inum`: Searches for files by inode number.

## 3. Implementation Code

```bash
# 1. Display inode using ls command
touch test_inode.txt
ls -i test_inode.txt

# 2. View full inode metadata using stat
stat test_inode.txt

# 3. Locate files matching an inode
inode_num=$(ls -i test_inode.txt | awk '{print $1}')
find . -inum $inode_num

# 4. Script to find inode of a given file
cat << 'EOF' > find_inode.sh
#!/bin/bash
echo "Enter filename:"
read filename

if [ -e "$filename" ]; then
    echo "Inode number for $filename is:"
    ls -i "$filename" | awk '{print $1}'
else
    echo "File does not exist!"
fi
EOF
chmod +x find_inode.sh
./find_inode.sh << 'EOF'
test_inode.txt
EOF

```

## 4. Expected Output

```text
1441793 test_inode.txt
  File: test_inode.txt
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 801h/2049d	Inode: 1441793     Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/  ubuntu)   Gid: ( 1000/  ubuntu)
Access: 2026-06-11 14:50:00.000000000 +0530
Modify: 2026-06-11 14:50:00.000000000 +0530
Change: 2026-06-11 14:50:00.000000000 +0530
 Birth: -
./test_inode.txt
Enter filename:
Inode number for test_inode.txt is:
1441793
```

## 5. Viva / Discussion Questions
1. **What is an inode and what does it represent in Linux?**
2. **Does an inode store the filename? Explain where filenames are stored.**
3. **Which command shows detailed file status including inode number, links, and blocks?**
4. **How can you search for a file in a directory using its inode number?**
5. **How do hard links and soft links differ in terms of inode numbers?**

---

[Back to Main Index](../README.md)
