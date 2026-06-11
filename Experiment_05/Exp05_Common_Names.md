# Experiment 05 — Finding Common Names in Two Files

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To identify common records or lines present in two separate text files using command-line utilities.

## 2. Theory
There are three main ways to find common lines between two files:
1. **`comm`**: Compares two sorted files line-by-line. The `-12` flag suppresses lines unique to file 1 and file 2, showing only lines common to both.
2. **`grep -f`**: Searches file 2 for patterns listed in file 1.
3. **`awk`**: Loads records from the first file into an associative array, then filters the second file by matching records against the array.

## 3. Implementation Code

```bash
# 1. Create two sample files
cat > class1.txt << 'EOF'
Cat
Dog
Lion
Zeebra
Hippo
EOF

cat > class2.txt << 'EOF'
Dog
Squid
Lion
Crab
Hippo
EOF

# 2. Method 1: Using the comm command (requires sorting first)
sort class1.txt > sorted1.txt
sort class2.txt > sorted2.txt
comm -12 sorted1.txt sorted2.txt

# 3. Method 2: Using grep -f
grep -f class1.txt class2.txt

# 4. Method 3: Using awk
awk 'NR==FNR{a[$0];next} $0 in a' class1.txt class2.txt
```

## 4. Expected Output

```text
Dog
Hippo
Lion
Dog
Lion
Hippo
Dog
Lion
Hippo
```

## 5. Viva / Discussion Questions
1. **What is the main prerequisite for using the `comm` command?**
2. **What does the `-12` flag do in the `comm` command?**
3. **How does `grep -f` work to find common lines between files?**
4. **Explain the logic of the `awk` command used to find matches.**
5. **What happens if you run the `comm` command on unsorted files?**

---

[Back to Main Index](../README.md)
