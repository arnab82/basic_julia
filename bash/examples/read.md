
1. Read Text From File, Print to Screen:
   - You can read the contents of a file and print them to the screen using the `cat` command.

```bash
#!/bin/bash

filename="file.txt"

cat "$filename"
```

In this example, the `cat` command is used to read the contents of the file specified by the `filename` variable and print them to the screen.

2. Read Text From File, If Condition Print to Screen:
   - You can read the contents of a file, apply a condition, and print specific lines to the screen using the `while` loop and the `read` command.

```bash
#!/bin/bash

filename="file.txt"

while read -r line; do
    if [[ "$line" == *"important"* ]]; then
        echo "$line"
    fi
done < "$filename"
```

In this example, the `while` loop reads each line from the file specified by the `filename` variable. If a line contains the word "important", it is printed to the screen.

3. Basic Read Command:
   - The `read` command allows you to read input from the user or from a file.

```bash
#!/bin/bash

read -p "Enter your name: " name
echo "Hello, $name!"
```

In this example, the `read` command prompts the user to enter their name, and the entered name is stored in the `name` variable. The name is then printed to the screen.

4. Read Command Into Array:
   - You can read multiple inputs into an array using the `read` command.

```bash
#!/bin/bash

read -a numbers -p "Enter numbers separated by spaces: "
echo "Numbers: ${numbers[@]}"
```

In this example, the `read` command prompts the user to enter numbers separated by spaces. The numbers are read into the `numbers` array, and the array elements are printed to the screen.

5. Read Command with Delimiter:
   - You can specify a delimiter for the `read` command to split the input into separate fields.

```bash
#!/bin/bash

while IFS=, read -r name age; do
    echo "Name: $name, Age: $age"
done < "data.csv"
```

In this example, the `read` command reads lines from the "data.csv" file, using a comma (`,`) as the delimiter. The fields are assigned to the `name` and `age` variables, and their values are printed to the screen.

6. Read Command with Timeout:
   - You can set a timeout for the `read` command to limit the time for user input.

```bash
#!/bin/bash

read -t 5 -p "Enter your name within 5 seconds: " name
echo "Hello, $name!"
```

In this example, the `read` command prompts the user to enter their name within 5 seconds. If no input is received within the timeout period, the script continues to the next line. The entered name is printed to the screen.
