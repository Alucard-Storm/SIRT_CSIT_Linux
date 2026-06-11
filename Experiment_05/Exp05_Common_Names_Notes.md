# Experiment 05 — Finding Common Names in Two Files | Notes

---

## Finding Shared Lines

Think of files like **lists of attendees** at two separate events:
- **`comm`** acts like a double-column checklist. It expects both lists to be in alphabetical order first. Then it checks both lists and keeps items where a match is found.
- **`grep -f`** acts like scanning the second list, name-by-name, searching for anyone on the first list.
- **`awk`** acts like memorizing the entire first list in memory (`a[$0]`) and then reading the second list to pull out matches.

---

[Back to Main Index](../README.md)
