
1. Parse Command Line Options with Position:
   - You can parse command-line options based on their position using the special variables `$1`, `$2`, etc.

```bash
#!/bin/bash

echo "First argument: $1"
echo "Second argument: $2"
```

In this example, the script accesses the first and second command-line arguments using the positional variables `$1` and `$2` respectively.

2. Parse Command Line Options with Shift Command:
   - You can parse command-line options using the `shift` command to shift the positional parameters.

```bash
#!/bin/bash

while [ $# -gt 0 ]; do
    echo "Argument: $1"
    shift
done
```

In this example, the script iterates over the command-line arguments using a while loop. Each argument is printed using `$1`, and then the `shift` command is used to shift the positional parameters to the left, discarding the first argument.

3. Parse Command Line Using GetOpt:
   - The `getopt` command allows you to parse command-line options and arguments more flexibly.

```bash
#!/bin/bash

options="a:b:c"
longoptions="input-file:,output-file:"

parsed=$(getopt -o "$options" -l "$longoptions" -n "$0" -- "$@")

eval set -- "$parsed"

while true; do
    case "$1" in
        -a)
            shift
            echo "Option -a: $1"
            shift
            ;;
        -b)
            shift
            echo "Option -b: $1"
            shift
            ;;
        -c)
            echo "Option -c"
            shift
            ;;
        --input-file)
            shift
            echo "Input file: $1"
            shift
            ;;
        --output-file)
            shift
            echo "Output file: $1"
            shift
            ;;
        --)
            shift
            break
            ;;
        *)
            break
            ;;
    esac
done
```

In this example, the script uses the `getopt` command to parse both short and long options. The options and their corresponding arguments are processed within the `while` loop using `case` statements.

4. Read Password from Stdin, Without Printing it:
   - You can use the `-s` option with the `read` command to read a password from stdin without displaying it on the terminal.

```bash
#!/bin/bash

read -s -p "Enter password: " password
echo "Password entered"
```

In this example, the `read` command reads input from the user while suppressing its output on the terminal. The entered password is then stored in the `password` variable.

5. Pipe Command Example:
   - You can pipe the output of one command as input to another command using the `|` operator.

```bash
#!/bin/bash

echo "Hello, World!" | grep "World"
```

In this example, the `echo` command outputs the string "Hello, World!". The output is then piped using `|` to the `grep` command, which searches for the string "World" and displays it.

6. Cat Pipe Word Count Example:
   - You can use the `cat` command in a pipeline with `wc` (word count) to count the number of words in a file.

```bash
#!/bin/bash

cat file.txt | wc -w
```

In this example, the `cat` command reads the contents of the "file.txt" file, and the output is piped to the `wc` command with the `-w` option, which counts the number of words in the input.
