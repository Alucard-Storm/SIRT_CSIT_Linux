# Experiment 4: Appending and Splitting Files

## First, append 10 more lines to wlcc.txt:
```bash
cat >> wlcc.txt << EOF
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
```

## Splitting the file:
split -l 5 wlcc.txt split_file_

The split command will create files named:
- split_file_aa (first 5 lines)
- split_file_ab (next 5 lines)
- split_file_ac (remaining lines)

## To view contents of split files:
cat split_file_aa
cat split_file_ab
cat split_file_ac

## Number of lines in last file:
The last file (split_file_ac) will contain 5 lines since:
- Original file had 5 lines
- We added 10 more lines
- Total 15 lines split into 3 parts of 5 lines each

## Alternative splitting methods:
1. Split by number of bytes: split -b 1024 wlcc.txt
2. Split by number of chunks: split -n 3 wlcc.txt

Note: The split command automatically names output files by adding letters 'aa', 'ab', 'ac', etc. to the prefix provided.
