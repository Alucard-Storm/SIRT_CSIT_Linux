# Experiment 03 — Word, Line, and Character Count

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To create a text file and analyze it using command-line tools to count lines, words, and characters.

## 2. Theory
The `wc` (word count) command displays the number of lines, words, and bytes/characters in a file.
- **`-l`**: Count lines.
- **`-w`**: Count words.
- **`-c`**: Count bytes/characters.

Alternative pipeline options allow similar counts using utility commands such as `grep` (with `-c`), and formatting tools like `tr` to split words or delete newlines.

## 3. Implementation Code

```bash
# 1. Create a sample text file wlcc.txt
cat > wlcc.txt << 'EOF'
Unix is a family of operating systems.
It is multitasking and multi-user.
The Unix shell is powerful.
Command line interface is very efficient.
Most servers run on Unix-like systems.
EOF

# 2. Perform word, line, and character counts using wc
wc -l wlcc.txt                      # Count lines
wc -w wlcc.txt                      # Count words
wc -c wlcc.txt                      # Count characters/bytes
wc wlcc.txt                         # Show all counts (lines, words, characters, filename)

# 3. Alternative Pipeline Methods
grep -c "" wlcc.txt                 # Alternative: Count lines
cat wlcc.txt | tr -d '\n' | wc -c   # Alternative: Character count (excluding newlines)
cat wlcc.txt | tr ' ' '\n' | grep -v "^$" | wc -l # Alternative: Word count
```

## 4. Expected Output

```text
5 wlcc.txt
32 wlcc.txt
192 wlcc.txt
 5  32 192 wlcc.txt
5
187
32
```

## 5. Viva / Discussion Questions
1. **What does the `wc` command output by default when run without flags?**
2. **Which flag of the `wc` command is used to count only lines?**
3. **How can you count the number of characters in a file without using `wc -c`?**
4. **What is the difference between counting bytes (`-c`) and counting characters (`-m`) in multi-byte files?**
5. **Explain the pipeline `cat wlcc.txt | tr ' ' '\n' | grep -v '^$' | wc -l`.**

---

[Back to Main Index](../README.md)
