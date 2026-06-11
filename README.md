# UNIX/LINUX LAB MANUAL (CSIT-505)
## Computer Science & Information Technology — V Semester
### Rajiv Gandhi Proudyogiki Vishwavidyalaya (RGPV), Bhopal

---

# 1. INTRODUCTION
This laboratory manual is designed in accordance with the **CSIT-505 Linux Lab syllabus** under the AICTE Flexible Curricula for V Semester.

The experiments follow a progressive structure — from basic shell navigation and arithmetic commands to word processing, file permissions, users management, writing advanced shell scripting programs, and setting up network daemon services like SAMBA, Apache Web Server, Tomcat Application Server, DNS (BIND9), OpenLDAP Directory Services, UFW Firewall, and Squid Caching Proxy.

---

# 2. COURSE OBJECTIVES
- To master fundamental **Unix/Linux Shell commands** and file management
- To perform arithmetic evaluations using `expr`, `let`, `bc`, and shell parameters
- To count lines, words, and characters in documents using pipelines
- To split files and search files using `grep`, `comm`, and `awk` commands
- To understand physical filesystem records (inodes) and hard/soft link layouts
- To configure file permission security tiers (`chmod`) and special permissions
- To direct program output pipelines using standard redirection and `tee` command
- To execute shell commands directly within the **Vi Text Editor**
- To customize users environment variables and configure shell profiles (`.bashrc`)
- To code modular, reusable shell scripts using inputs, comparisons, loops, and functions
- To configure and execute enterprise network daemon services: SAMBA, Apache HTTP, and Tomcat Java Web server
- To manage internet name resolution (BIND9 DNS) and central directory services (OpenLDAP)
- To construct network security gates using firewall wrappers (UFW) and caching proxy systems (Squid)

---

# 3. SOFTWARE REQUIREMENTS
- **Operating System**: Ubuntu 20.04+ / Debian 11+ / RHEL 8+
- **Shell Interface**: GNU Bash (Bourne Again Shell)
- **Text Editors**: Vi / Vim / Nano
- **Network Services**: SAMBA 4.x, Apache 2.4.x, Tomcat 9.x, BIND 9.x, OpenLDAP 2.x
- **Firewalls & Proxies**: UFW, Squid Proxy 5.x

---

# 4. LIST OF EXPERIMENTS
| No. | Topic | Experiment | Notes |
|-----|-------|------------|-------|
| 01 | Basic & User Status Commands | [**Exp01_Basic_User_Commands.md**](Experiment_01/Exp01_Basic_User_Commands.md) | [Notes](Experiment_01/Exp01_Basic_User_Commands_Notes.md) |
| 02 | Arithmetic Operations | [**Exp02_Arithmetic_Operations.md**](Experiment_02/Exp02_Arithmetic_Operations.md) | [Notes](Experiment_02/Exp02_Arithmetic_Operations_Notes.md) |
| 03 | Word, Line, and Character Count | [**Exp03_Word_Line_Char_Count.md**](Experiment_03/Exp03_Word_Line_Char_Count.md) | [Notes](Experiment_03/Exp03_Word_Line_Char_Count_Notes.md) |
| 04 | Appending and Splitting Files | [**Exp04_Append_Split_Files.md**](Experiment_04/Exp04_Append_Split_Files.md) | [Notes](Experiment_04/Exp04_Append_Split_Files_Notes.md) |
| 05 | Finding Common Names in Two Files | [**Exp05_Common_Names.md**](Experiment_05/Exp05_Common_Names.md) | [Notes](Experiment_05/Exp05_Common_Names_Notes.md) |
| 06 | Finding Inode Numbers | [**Exp06_Inode_Numbers.md**](Experiment_06/Exp06_Inode_Numbers.md) | [Notes](Experiment_06/Exp06_Inode_Numbers_Notes.md) |
| 07 | Changing File Permissions | [**Exp07_File_Permissions.md**](Experiment_07/Exp07_File_Permissions.md) | [Notes](Experiment_07/Exp07_File_Permissions_Notes.md) |
| 08 | Pipeline Commands for User Information | [**Exp08_Pipeline_User_Info.md**](Experiment_08/Exp08_Pipeline_User_Info.md) | [Notes](Experiment_08/Exp08_Pipeline_User_Info_Notes.md) |
| 09 | Executing Shell Commands in Vi Editor | [**Exp09_Vi_Shell_Commands.md**](Experiment_09/Exp09_Vi_Shell_Commands.md) | [Notes](Experiment_09/Exp09_Vi_Shell_Commands_Notes.md) |
| 10 | Unix/Linux Installation and Customization | [**Exp10_Installation_Customization.md**](Experiment_10/Exp10_Installation_Customization.md) | [Notes](Experiment_10/Exp10_Installation_Customization_Notes.md) |
| 11 | Shell Script to Print Arguments in Reverse Order | [**Exp11_Reverse_Arguments.md**](Experiment_11/Exp11_Reverse_Arguments.md) | [Notes](Experiment_11/Exp11_Reverse_Arguments_Notes.md) |
| 12 | Shell Script to Find Smallest of Three Numbers | [**Exp12_Smallest_Of_Three.md**](Experiment_12/Exp12_Smallest_Of_Three.md) | [Notes](Experiment_12/Exp12_Smallest_Of_Three_Notes.md) |
| 13 | Monitor User Login Script | [**Exp13_Monitor_User_Login.md**](Experiment_13/Exp13_Monitor_User_Login.md) | [Notes](Experiment_13/Exp13_Monitor_User_Login_Notes.md) |
| 14 | Installation of SAMBA, APACHE, and TOMCAT | [**Exp14_Samba_Apache_Tomcat.md**](Experiment_14/Exp14_Samba_Apache_Tomcat.md) | [Notes](Experiment_14/Exp14_Samba_Apache_Tomcat_Notes.md) |
| 15 | Implementation of DNS and LDAP Services | [**Exp15_DNS_LDAP_Services.md**](Experiment_15/Exp15_DNS_LDAP_Services.md) | [Notes](Experiment_15/Exp15_DNS_LDAP_Services_Notes.md) |
| 16 | Study & installation of Firewall & Proxy Server | [**Exp16_Firewall_Proxy_Server.md**](Experiment_16/Exp16_Firewall_Proxy_Server.md) | [Notes](Experiment_16/Exp16_Firewall_Proxy_Server_Notes.md) |

---

# 5. GENERAL INSTRUCTIONS
- Each experiment follows the standard format:
  - **Aim** — What the experiment demonstrates
  - **Theory** — Concepts and key CLI utilities explained simply
  - **Implementation Code** — Ready-to-run shell scripts / console command lists
  - **Expected Output** — What the program or execution should display
  - **Viva / Discussion Questions** — Common questions to prepare for oral examination
- All shell scripts must be saved with a `.sh` extension and made executable via `chmod +x filename.sh` before running.
- Students must maintain a **lab record** with handwritten entries or printed code and output.

---

# 6. EVALUATION SCHEME
- Continuous Lab Assessment
- Experiment Implementation & Running Output
- Viva-Voce Examination
- Lab Record Submission

---

# 7. CONCLUSION
This laboratory manual equips students with essential command-line systems administration skills and automation script writing capabilities. Moving from directory operations, regex searches, and file structures to managing services and firewalls, students establish a robust foundation for systems administration and devops engineering.

---

**Department of Computer Science & Information Technology**
Sagar Institute of Research & Technology (SIRT), Bhopal
