
1. `xargs` to Operate on All Files in a Directory:
   - You can use the `xargs` command to operate on all files in a directory by combining it with another command.

```bash
#!/bin/bash

ls | xargs rm
```

In this example, the `ls` command lists all files in the current directory, and the output is piped to `xargs` to pass each file name as an argument to the `rm` command, deleting all files in the directory.

2. Wait for Another Command to Complete:
   - You can use the `wait` command to pause the script execution until a background command or process completes.

```bash
#!/bin/bash

long_running_command &
wait
```

In this example, the `long_running_command` is executed in the background using `&`, and the `wait` command is used to pause the script execution until the background command completes.

3. Combine `kill` and `wait` Commands:
   - You can use the `kill` command to terminate a background process and then use `wait` to wait for it to complete.

```bash
#!/bin/bash

long_running_command &
pid=$!
kill $pid
wait $pid
```

In this example, the `long_running_command` is executed in the background using `&`, and its process ID (PID) is captured in the `pid` variable using the `$!` syntax. The `kill` command is used to terminate the background process, and the `wait` command is used to wait for the process to complete.

4. Star Wildcard on File Selection:
   - You can use the `*` wildcard to select multiple files based on a pattern.

```bash
#!/bin/bash

ls *.txt
```

In this example, the `ls` command is used to list all files with the `.txt` extension in the current directory.

5. Question Mark Wildcard on File Selection:
   - You can use the `?` wildcard to match a single character in a file name.

```bash
#!/bin/bash

ls file?.txt
```

In this example, the `ls` command is used to list files with names like `file1.txt`, `file2.txt`, etc., where the `?` matches a single character.

6. Square Bracket on File Selection:
   - You can use square brackets `[ ]` to specify a range of characters for file selection.

```bash
#!/bin/bash

ls file[1-3].txt
```

In this example, the `ls` command is used to list files with names like `file1.txt`, `file2.txt`, or `file3.txt`, where the range `[1-3]` matches any digit between 1 and 3.

7. Parentheses and Pipe for File Selection Options:
   - You can use parentheses and the pipe (`|`) to specify multiple file selection options.

```bash
#!/bin/bash

ls (file1|file2).txt
```

In this example, the `ls` command is used to list files with names `file1.txt` or `file2.txt` using the parentheses and the pipe (`|`) for multiple options.

8. Brace Expansion Comma-Separated List:
   - You can use brace expansion to generate comma-separated lists of values.

```bash
#!/bin/bash

echo {1,2,3}
```

In this example, the `echo` command is used with brace expansion to generate the output `1 2 3`, which is the result of expanding the comma-separated list `{1,2,3}`.

9. Brace Expansion Range:
   - You can use brace expansion to specify a range of values.

```bash
#!/bin/bash

echo {1..5}
```

In this example, the `echo` command is used with brace expansion to generate the output `1 2 3 4 5`, which is the result of expanding the range `{1..5}`.

10. Brace Expansion with Preamble:
    - You can use brace expansion with a preamble to generate a series of values.

```bash
#!/bin/bash

echo file{1..3}.txt
```

In this example, the `echo` command is used with brace expansion to generate the output `file1.txt file2.txt file3.txt`, which is the result of expanding the range `{1..3}` with the preamble `file` and the extension `.txt`.

11. Operating on List of Files with Brace Expansion:
    - You can use brace expansion to operate on a list of files.

```bash
#!/bin/bash

rm file{1..3}.txt
```

In this example, the `rm` command is used with brace expansion to delete files `file1.txt`, `file2.txt`, and `file3.txt`.

12. Reference Home Directory with Tilde:
    - You can use the tilde (`~`) character to refer to the home directory.

```bash
#!/bin/bash

ls ~/Documents
```

In this example, the `ls` command is used to list files in the `Documents` directory within the user's home directory.

13. Parameter Expansion for Printing Constant or Variable if Unset:
    - You can use parameter expansion to print a constant or a variable if it is unset.

```bash
#!/bin/bash

name="John"
echo "${name:-Anonymous}"
```

In this example, the `echo` command uses parameter expansion `${name:-Anonymous}` to print the value of the `name` variable if it is set, and `Anonymous` if it is unset.

14. Substring Expansion for Printing Part

 of a String:
    - You can use substring expansion to print a specific part of a string.

```bash
#!/bin/bash

string="Hello, World!"
echo "${string:7:5}"
```

In this example, the `echo` command uses substring expansion `${string:7:5}` to print the substring starting from the 7th character and with a length of 5 characters from the `string` variable.

15. Parameter Expansion for Assigning Constant to Variable if Unset:
    - You can use parameter expansion to assign a constant value to a variable if it is unset.

```bash
#!/bin/bash

echo "${name:=Anonymous}"
echo "$name"
```

In this example, the first `echo` command uses parameter expansion `${name:=Anonymous}` to assign the value `Anonymous` to the `name` variable if it is unset. The second `echo` command prints the value of the `name` variable, which will be `Anonymous` if it was previously unset.

16. Check If File is Executable, Set If Not:
    - You can use the `-x` test operator in an if-else statement to check if a file is executable and set it if it's not.

```bash
#!/bin/bash

filename="script.sh"
if [ ! -x "$filename" ]; then
    chmod +x "$filename"
fi
```

In this example, the script checks if the file named `script.sh` is not executable using the `-x` test operator. If it's not executable, the `chmod` command is used to set the executable permission for the file.

17. Check If File Is Owned By User, Set If Not:
    - You can use the `-o` test operator in an if-else statement to check if a file is owned by the user and set it if it's not.

```bash
#!/bin/bash

filename="file.txt"
if [ ! -o "$filename" ]; then
    chown "$USER" "$filename"
fi
```

In this example, the script checks if the file named `file.txt` is not owned by the current user using the `-o` test operator. If it's not owned by the user, the `chown` command is used to change the ownership of the file to the current user.

18. `wc` to Count Lines in a File:
    - You can use the `wc` command with the `-l` option to count the number of lines in a file.

```bash
#!/bin/bash

filename="file.txt"
line_count=$(wc -l < "$filename")
echo "The file $filename has $line_count lines."
```

In this example, the `wc` command with the `-l` option is used to count the number of lines in the file named `file.txt`. The output is then stored in the `line_count` variable, and the result is printed using `echo`.

19. `wc` to Count Characters in a File:
    - You can use the `wc` command with the `-m` option to count the number of characters in a file.

```bash
#!/bin/bash

filename="file.txt"
char_count=$(wc -m < "$filename")
echo "The file $filename has $char_count characters."
```

In this example, the `wc` command with the `-m` option is used to count the number of characters in the file named `file.txt`. The output is then stored in the `char_count` variable, and the result is printed using `echo`.
