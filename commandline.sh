#!/bin/bash
echo "File name:$1"
for file in $1; do
if [ -d "$file" ]; then
echo "$file is a directory"
elif [ -f "$file" ] ;then
echo "$file is a file"
else
echo "no argument"
fi
done
