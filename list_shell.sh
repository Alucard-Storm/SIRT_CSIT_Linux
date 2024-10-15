# Script to list files in current directory

echo "Displaying Directories"
for item in *
    do
        if [ -d $item ]
        then
        echo "$item"
        fi
    done
echo "Displaying files"
for item in *
    do
        if [ -f $item ]
        then
        echo "$item"
        fi
    done