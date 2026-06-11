# Experiment 06 — Finding Inode Numbers | Notes

---

## Inodes Explained Simply

Think of the filesystem like a **hotel**:
- The **Filename** is the **Guest's Name** (stored at the front desk directory).
- The **Inode Number** is the **Room Number**.
- The **Inode Structure** is the **Guest Registration Card** in the drawer (stores details like check-in time, room size, and authorization permissions).
- The **Data Blocks** on the hard drive are the **Actual Rooms** where the luggage/data is stored.

Two guests (hard links) can share the same room (inode number) and will see the exact same room configuration.

---

[Back to Main Index](../README.md)
