# Experiment 09 — Executing Shell Commands in Vi Editor | Notes

---

## Quick Vi Command Reference

| Action | Command in Vi | Description |
|--------|---------------|-------------|
| **Run Command** | `:!ls` | Displays directory contents, returns to file |
| **Insert Output** | `:r !date` | Pastes the current system date/time into file |
| **Filter File** | `:%!sort` | Sorts the entire file alphabetically |
| **Filter Range** | `:'<,'>!sort` | Sorts only the highlighted block |
| **Spawn Shell** | `:shell` | Launches a full shell; type `exit` to return |

---

[Back to Main Index](../README.md)
