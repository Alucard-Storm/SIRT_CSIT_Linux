# Experiment 08 — Pipeline Commands for User Information

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To construct pipelines to extract user information and write the logs to a file using the `tee` utility.

## 2. Theory
1. **Pipeline (`|`)**: Channels the stdout of one command directly into the stdin of another.
2. **`who`**: Shows which users are currently logged into the system.
3. **`w`**: Provides a detailed summary of logged-in users and their active processes.
4. **`tee`**: Split command utility. It copies standard input to standard output and simultaneously writes it to one or more files.

## 3. Implementation Code

```bash
# 1. Pipeline who command output into tee to print and save
who | tee users.ux

# 2. Use w command to log active processes
w | tee active_users.ux

# 3. Append command output using tee -a flag
who -H | tee -a users.ux

# 4. Save date along with active users
(date; who) | tee date_users.ux

# 5. Continuous background monitoring script
cat << 'EOF' > monitor_bg.sh
#!/bin/bash
echo "Monitoring start time: $(date)" > monitor.log
for i in {1..3}; do
    echo "--- Poll $i ---" >> monitor.log
    who >> monitor.log
    sleep 2
done
cat monitor.log
EOF
chmod +x monitor_bg.sh
./monitor_bg.sh
```

## 4. Expected Output

```text
ubuntu   pts/0        2026-06-11 14:50 (192.168.1.5)
 14:50:01 up 1 day,  2:30,  1 user,  load average: 0.00, 0.01, 0.05
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
ubuntu   pts/0    192.168.1.5      14:50    0.00s  0.05s  0.01s w
Monitoring start time: Thu Jun 11 14:50:01 IST 2026
--- Poll 1 ---
ubuntu   pts/0        2026-06-11 14:50 (192.168.1.5)
--- Poll 2 ---
ubuntu   pts/0        2026-06-11 14:50 (192.168.1.5)
--- Poll 3 ---
ubuntu   pts/0        2026-06-11 14:50 (192.168.1.5)
```

## 5. Viva / Discussion Questions
1. **What is the primary function of the `tee` command in a pipeline?**
2. **How does the pipe (`|`) operator work in Unix systems?**
3. **What is the difference between `who` and `w` commands?**
4. **How can you configure the `tee` command to append to a file rather than overwrite it?**
5. **Explain the usage of the command combination `(date; who) | tee log.txt`.**

---

[Back to Main Index](../README.md)
