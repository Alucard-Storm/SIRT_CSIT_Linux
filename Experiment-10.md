# Experiment 10: Unix/Linux Installation and Customization

## Installation Steps:

1. Pre-installation:
   - Download ISO image
   - Create bootable USB/DVD
   - Backup existing data
   - Plan partition scheme

2. Basic Installation:
   - Boot from installation media
   - Select language and keyboard layout
   - Configure network
   - Set timezone
   - Create partitions
   - Select package groups
   - Create user account

3. Post-installation:

   a. System Updates:
   ```bash
   # For Debian/Ubuntu:
   sudo apt update
   sudo apt upgrade

   # For Red Hat/Fedora:
   sudo dnf update
   ```

   b. Install Essential Software:
   ```bash
   # Development tools
   sudo apt install build-essential
   
   # System utilities
   sudo apt install htop net-tools
   ```

## Customization:

1. Shell Customization:
   - Edit ~/.bashrc
   - Configure aliases
   - Set environment variables

2. Desktop Environment:
   - Install themes
   - Configure shortcuts
   - Set up workspaces

3. System Settings:
   - Power management
   - Network configuration
   - Security settings

## Important Configuration Files:
1. /etc/fstab - Filesystem table
2. /etc/passwd - User accounts
3. /etc/hostname - System hostname
4. /etc/hosts - Host mappings

Note: Always backup configuration files before making changes.
