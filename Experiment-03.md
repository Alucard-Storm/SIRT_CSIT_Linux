# Experiment 3: Word, Line, and Character Count

## Creating wlcc.txt file:
```bash
# First create the file with some content
cat > wlcc.txt << EOF
Unix is a family of operating systems.
It is multitasking and multi-user.
The Unix shell is powerful.
Command line interface is very efficient.
Most servers run on Unix-like systems.
EOF
```

## Commands to count:
1. Count lines:
   wc -l wlcc.txt

2. Count words:
   wc -w wlcc.txt

3. Count characters:
   wc -c wlcc.txt

4. All counts at once:
   wc wlcc.txt
   # Output format: lines words characters filename

## Alternative commands:
1. Count lines: grep -c "" wlcc.txt
2. Character count: cat wlcc.txt | tr -d '\n' | wc -c
3. Word count: cat wlcc.txt | tr ' ' '\n' | grep -v "^$" | wc -l

Note: The wc command is the most efficient way to get these counts. The -l flag counts lines, -w counts words, and -c counts bytes/characters.
