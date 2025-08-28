# Experiment 9: Executing Shell Commands in Vi Editor

## Methods to Execute Shell Commands in Vi:

1. Single Command Execution:
   - Press ESC to enter command mode
   - Type :!command
   Example: :!ls -l

2. Inserting Command Output:
   - Press ESC to enter command mode
   - Type :r !command
   Example: :r !date

3. Running Multiple Commands:
   - :!command1 && command2
   Example: :!ls -l && pwd

## Common Use Cases:

1. Check directory contents:
   :!ls -l

2. Insert current date:
   :r !date

3. Compile current file (if it's code):
   :!gcc %
   (% represents current file)

4. View system information:
   :!top

## Shell Command Range:
1. Execute command on selected lines:
   :'<,'>!sort

2. Filter entire file through command:
   :%!fmt

## Tips:
- Use CTRL+L to refresh screen after command execution
- Use :shell to start a shell session
- Use exit to return to vi
- Use :w to save before executing commands

Note: The ability to execute shell commands makes vi/vim a powerful development environment.
