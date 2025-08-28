# Experiment 8: Pipeline Commands for User Information

## Command to display and save user information:
```bash
who | tee users.ux
```

## Alternative methods:

1. Using w command:
```bash
w | tee users.ux
```

2. More detailed information:
```bash
who -H | tee users.ux
```

3. With date stamp:
```bash
(date; who) | tee users.ux
```

4. Monitoring active users:
```bash
#!/bin/bash
while true; do
    clear
    echo "Current time: $(date)"
    who
    sleep 60  # Update every minute
done | tee users.ux
```

## Understanding the components:
- who: Shows who is logged in
- tee: Reads from standard input and writes to both standard output and files
- users.ux: Output file

## Additional options:
1. Append to file instead of overwriting:
```bash
who | tee -a users.ux
```

2. Include process information:
```bash
ps aux | tee users.ux
```

Note: The tee command is named after the T-splitter used in plumbing, as it splits the output into two directions.
