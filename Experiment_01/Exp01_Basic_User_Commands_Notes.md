# Experiment 01 — Basic & User Status Commands | Notes

---

## Understanding Linux Shell Commands

Think of the Unix shell like a **virtual command center**:
- **Directory commands** are your **GPS** — they tell you where you are (`pwd`), allow you to travel (`cd`), and build new rooms (`mkdir`).
- **User status commands** are the **ID badges** — they verify who you are (`whoami`), who else is in the building (`who`), and what access levels they have (`id`, `groups`).
- **File management commands** are the **clerical office** — creating documents (`touch`), copying them (`cp`), organizing folders (`mv`), and shredding them (`rm`).
- **Process commands** are the **task manager** — showing what programs are running (`ps`, `top`) and shutting them down if they freeze (`kill`).

### Common Flags Reference
| Command | Flag | Description |
|---------|------|-------------|
| `ls` | `-l` | Long format listing (permissions, size, owner) |
| `ls` | `-a` | Show all files including hidden ones (starting with `.`) |
| `ps` | `-ef` | Full system process list |
| `kill` | `-9` | Non-ignorable kill signal (SIGKILL) |

---

[Back to Main Index](../README.md)
