# Experiment 01 — Basic & User Status Commands

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To study and execute basic Unix/Linux commands and user status commands.

## 2. Theory
Unix/Linux commands are programs that run in a shell interface to interact with the operating system. They generally follow the format `command [options] [arguments]`.

### Core Command Categories
1. **Directory Operations**: `pwd` prints the working directory, `cd` changes directories, and `mkdir` creates directories.
2. **User Status**: `whoami` displays the current active user, `who` lists all logged-in users, `id` prints user/group IDs, `groups` lists group membership, and `finger` searches user information.
3. **File Management**: `ls` lists files, `touch` creates empty files, `cp` copies files, `mv` moves/renames files, and `rm` deletes files.
4. **Process Control**: `ps` lists running processes, `top` displays real-time resource utilization, and `kill` sends termination signals to processes.

## 3. Implementation Code

```bash
# 1. Directory Operations
pwd                                 # Print working directory
cd /home                            # Change directory
cd ..                               # Go up one directory level
mkdir Test_Dir                      # Create a new directory

# 2. User Status Commands
whoami                              # Display current logged-in user
who                                 # Show all logged-in users
id                                  # Print UID and GID information
groups                              # List groups the current user belongs to
finger username                     # Display detailed user information (if installed)

# 3. File Operations
touch sample.txt                    # Create an empty file
cp sample.txt copy.txt              # Copy sample.txt to copy.txt
mv copy.txt renamed.txt             # Rename copy.txt to renamed.txt
ls -la                              # List all files with detailed info
rm sample.txt renamed.txt           # Remove the files

# 4. Process Operations
ps -ef                              # List all running processes
top -n 1                            # Display process statistics (single iteration)
kill -9 1234                        # Force terminate process with PID 1234
```

## 4. Expected Output

```text
/home/alucard
ubuntu
uid=1000(ubuntu) gid=1000(ubuntu) groups=1000(ubuntu),4(adm),27(sudo)
total 8
drwxr-xr-x 2 ubuntu ubuntu 4096 Jun 11 14:50 .
drwxr-xr-x 3 root   root   4096 Jun 11 14:50 ..
-rw-r--r-- 1 ubuntu ubuntu    0 Jun 11 14:50 sample.txt
```

## 5. Viva / Discussion Questions
1. **What is the difference between `ls` and `ls -a`?**
2. **What does the `pwd` command stand for, and what is its purpose?**
3. **How does `who` differ from `whoami`?**
4. **What does the `finger` command do, and which package provides it?**
5. **How do you force-terminate a process in Linux using the CLI?**

---

[Back to Main Index](../README.md)
