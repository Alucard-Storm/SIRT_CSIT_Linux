# Experiment 5: Finding Common Names in Two Files

## Create two sample files:
```bash
# Create first file (class1.txt)
cat > class1.txt << EOF
Cat
Dog
Lion
Zeebra
Hippo
EOF

# Create second file (class2.txt)
cat > class2.txt << EOF
Dog
Squid
Lion
Crab
Hippo
EOF
```

## Methods to find common names:

1. Using comm command:
```bash
sort class1.txt > sorted1.txt
sort class2.txt > sorted2.txt
comm -12 sorted1.txt sorted2.txt
```

2. Using grep:
```bash
grep -f class1.txt class2.txt
```

3. Using awk:
```bash
awk 'NR==FNR{a[$0];next} $0 in a' class1.txt class2.txt
```

The output will show:
Dog
Lion
Hippo

Note: 
- comm requires sorted input files
- grep -f searches for patterns from first file in second file
- awk solution creates an array from first file and checks second file against it
