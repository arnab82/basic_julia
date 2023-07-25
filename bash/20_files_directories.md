
1. Checking file existence, permissions, and types:

   - To check if a file exists, you can use the `-e` or `-f` option with the `test` command or the `[ ]` syntax.
   - To check if a file is readable, writable, or executable, you can use the `-r`, `-w`, or `-x` options, respectively.
   - To check if a file is a directory, you can use the `-d` option.
2. Working with directories and file paths:

   - To create a directory, you can use the `mkdir` command.
   - To change the current directory, you can use the `cd` command.
   - To list the contents of a directory, you can use the `ls` command.
   - To get the absolute path of a file or directory, you can use the `realpath` command or the `readlink` command.
3. Examples of file and directory operations in Bash scripts:

Example 1: Checking file existence and permissions:

```bash
#!/bin/bash

file="example.txt"

# Check if the file exists
if [ -e "$file" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

# Check if the file is readable and writable
if [ -r "$file" ]; then
    echo "File is readable"
fi

if [ -w "$file" ]; then
    echo "File is writable"
fi
```

Example 2: Creating a directory and changing the current directory:

```bash
#!/bin/bash

dir="example_dir"

# Create a directory
mkdir "$dir"

# Change the current directory
cd "$dir"

# Display the current directory
echo "Current directory: $(pwd)"
```

Example 3: Listing the contents of a directory:

```bash
#!/bin/bash

dir="example_dir"

# List the contents of the directory
ls "$dir"
```

Example 4: Getting the absolute path of a file:

```bash
#!/bin/bash

file="example.txt"

# Get the absolute path of the file using realpath
abs_path=$(realpath "$file")
echo "Absolute path: $abs_path"

# Get the absolute path of the file using readlink
abs_path=$(readlink -f "$file")
echo "Absolute path: $abs_path"
```



Example 5: Copying a file:

```bash
#!/bin/bash

source_file="source.txt"
destination_file="destination.txt"

# Copy the file
cp "$source_file" "$destination_file"
```

Example 6: Renaming a file:

```bash
#!/bin/bash

old_name="old.txt"
new_name="new.txt"

# Rename the file
mv "$old_name" "$new_name"
```

Example 7: Deleting a file:

```bash
#!/bin/bash

file="file.txt"

# Delete the file
rm "$file"
```

Example 8: Checking if a directory exists:

```bash
#!/bin/bash

dir="example_dir"

# Check if the directory exists
if [ -d "$dir" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi
```

Example 9: Traversing a directory and performing operations on files:

```bash
#!/bin/bash

dir="example_dir"

# Traverse the directory and process each file
for file in "$dir"/*; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        # Perform operations on the file
    fi
done
```
