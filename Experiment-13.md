# Experiment 13: Monitor User Login Script

## Script to monitor user login:
```bash
#!/bin/bash

# Check if username is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

username=$1
timeout=60  # Timeout in seconds
elapsed=0

echo "Monitoring login for user: $username"
echo "Will wait for $timeout seconds"

# Monitor loop
while [ $elapsed -lt $timeout ]; do
    # Check if user is logged in
    if who | grep "^$username " > /dev/null; then
        echo "User $username has logged in!"
        # Optional: you can add timestamp
        date
        exit 0
    fi
    
    # Wait for 1 second before next check
    sleep 1
    ((elapsed++))
    
    # Optional: show countdown
    remaining=$((timeout - elapsed))
    echo -ne "Time remaining: $remaining seconds\r"
done

echo "Timeout: User $username did not log in within $timeout seconds"
exit 1
```

## Alternative implementation with more features:
```bash
#!/bin/bash

usage() {
    echo "Usage: $0 username [timeout_minutes]"
    exit 1
}

# Check arguments
if [ $# -lt 1 ]; then
    usage
fi

username=$1
timeout=${2:-1}  # Default 1 minute if not specified
timeout=$((timeout * 60))  # Convert to seconds

echo "Starting monitor for user: $username"
echo "Timeout set to: $((timeout/60)) minutes"

start_time=$(date +%s)
end_time=$((start_time + timeout))

while [ $(date +%s) -lt $end_time ]; do
    if who | grep "^$username " > /dev/null; then
        echo "Alert: $username logged in at $(date)"
        # Optional: Send notification
        # notify-send "User Login" "$username has logged in"
        exit 0
    fi
    sleep 1
done

echo "Monitor timed out. $username did not log in."
exit 1
```

Notes:
- Script uses the 'who' command to check logins
- Can be modified to send notifications
- Supports custom timeout period
- Shows real-time countdown
- Can be extended to monitor multiple users
