# Experiment 08 — Pipeline Commands for User Information | Notes

---

## Pipelines & The Tee Splitter

Think of command redirection like **water plumbing**:
- A **command** is a water pump that outputs water.
- A **standard pipe (`|`)** is a straight pipe connecting one pump directly to another filter.
- The **`tee` command** is a **T-shaped joint** in the plumbing. It lets water continue straight (to your display screen) while branching off a copy into a container (the log file).

```
          [ Command Output ]
                  |
                  v
             [  pipe |  ]
                  |
                  v
            ====[ tee ]====
            |             |
            v             v
      [ Terminal ]   [ Log File ]
```

---

[Back to Main Index](../README.md)
