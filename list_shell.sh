# Script to list directories and files in current directory
# This script separates and displays directories and files in the current location
# * will list all the files and folders in current directory
# -d option checks if item is a directory
# -f option checks if item is a regular file
# The script uses two separate loops:
# 1. First loop finds and displays only directories
# 2. Second loop finds and displays only files

echo "Displaying Directories"

for item in *
    do
        # if statement to filter only directories(folders) using the -d option
        # -d tests if the item is a directory
        if [ -d $item ]
        then
        echo "$item"
        fi
    done

echo "Displaying files"
for item in *
    do
        # if statement to filter only files using the -f option
        # -f tests if the item is a regular file
        if [ -f $item ]
        then
        echo "$item"
        fi
    done