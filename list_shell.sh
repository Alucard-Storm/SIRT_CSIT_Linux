# Script to list directories and files in current directory
# * will list all the files and folders

echo "Displaying Directories"

for item in *
    do
        # if statement to filer only directories(folders) using the -d option
        if [ -d $item ]
        then
        echo "$item"
        fi
    done
echo "Displaying files"
for item in *
    do
        # if statement to filer only files using the -f option
        if [ -f $item ]
        then
        echo "$item"
        fi
    done