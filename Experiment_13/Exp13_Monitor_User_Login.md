# Experiment 13 — Monitor User Login Script

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To write a Bash script that monitors a specified user login and exits with an alert when they log in.

## 2. Theory
Monitoring script workflows run in loops to poll system status:
- A `while` loop checks logins at set intervals.
- The `who` utility combined with `grep` verifies if a user has an active session.
- Output redirection to `/dev/null` hides terminal logs.
- The `sleep` command halts execution between check cycles.

## 3. Implementation Code

```bash
# 1. Create the user monitor script
cat << 'EOF' > monitor_user.sh
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

username=$1
timeout=10  # Monitor timeout in seconds
elapsed=0

echo "Monitoring login for user: $username (Timeout: $timeout seconds)"

while [ $elapsed -lt $timeout ]; do
    # Check if user is in who list
    if who | grep "^$username " > /dev/null; then
        echo -e "\nAlert: User $username has logged in!"
        date
        exit 0
    fi
    
    sleep 1
    ((elapsed++))
    echo -ne "Time remaining: $((timeout - elapsed))s\r"
done

echo -e "\nTimeout: User $username did not log in within $timeout seconds"
exit 1
EOF

# 2. Make executable and run
chmod +x monitor_user.sh
./monitor_user.sh testuser
```

## 4. Expected Output

```text
Monitoring login for user: testuser (Timeout: 10 seconds)
Time remaining: 0s
Timeout: User testuser did not log in within 10 seconds
```

## 5. Viva / Discussion Questions
1. **Explain how the redirect `> /dev/null` works in the script.**
2. **What does the `sleep` command do, and why is it important in polling loops?**
3. **Explain the difference between `echo -n` and `echo -e` options.**
4. **How does `grep "^$username "` ensure a precise match?**
5. **How can you make the script run indefinitely until the user logs in?**

---

[Back to Main Index](../README.md)
