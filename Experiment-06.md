# Experiment 6: Finding Inode Numbers

## What is an inode?
An inode is a data structure that stores basic information about a file:
- File size
- Owner information
- Permissions
- File type
- Timestamps
- Location of the file's data blocks

## Commands to find inode numbers:

1. Using ls command:
```bash
ls -i filename
```

2. Using stat command:
```bash
stat filename
```

3. Using find command:
```bash
find . -inum [inode_number]
```

## Example script to find inode number:
```bash
#!/bin/bash
echo "Enter filename:"
read filename

if [ -e "$filename" ]; then
    echo "Inode number for $filename is:"
    ls -i "$filename" | awk '{print $1}'
else
    echo "File does not exist!"
fi
```

## Additional inode information:
- Each filesystem has a finite number of inodes
- Each file must have exactly one inode
- Multiple filenames (hard links) can point to the same inode
- To see total/used inodes: df -i

Note: Inode numbers are unique within a filesystem but may not be unique across different filesystems.
