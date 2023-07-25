
1. For Loop with a List of Values:
   - You can use a for loop to iterate over a list of values.
   - Provide the list of values inside parentheses or as an array.

```bash
#!/bin/bash

fruits=("apple" "banana" "orange")

for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```

Output:

```
Fruit: apple
Fruit: banana
Fruit: orange
```

In this example, the for loop iterates over the elements in the `fruits` array and prints each element.

2. For Loop on a Range of Numbers:
   - You can use a for loop to iterate over a range of numbers.
   - Specify the starting number, ending number, and increment value.

```bash
#!/bin/bash

for number in {1..5}; do
    echo "Number: $number"
done
```

Output:

```
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

In this example, the for loop iterates over the numbers 1 to 5 and prints each number.

3. For Loop Using the Output of a Command:
   - You can use a for loop to iterate over the output of a command.
   - Enclose the command in backticks or use `$()` to capture the command output.

```bash
#!/bin/bash

for file in $(ls); do
    echo "File: $file"
done
```

Output:

```
File: file1.txt
File: file2.txt
File: script.sh
```

In this example, the for loop iterates over the files in the current directory by capturing the output of the `ls` command.

4. For Loop to Process Files in a Directory:
   - You can use a for loop to iterate over files in a directory.
   - Use the `*` wildcard to match all files or specify a pattern.

```bash
#!/bin/bash

for file in /path/to/directory/*; do
    echo "File: $file"
done
```

Output:

```
File: /path/to/directory/file1.txt
File: /path/to/directory/file2.txt
File: /path/to/directory/script.sh
```

In this example, the for loop iterates over files in the `/path/to/directory` directory and prints each file.

5. For Loop with Conditional Break:
   - You can use a for loop with a conditional statement to break the loop prematurely.
   - Use the `break` statement to exit the loop based on a condition.

```bash
#!/bin/bash

for number in {1..10}; do
    if [ $number -eq 6 ]; then
        break
    fi
    echo "Number: $number"
done
```

Output:

```
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

In this example, the for loop iterates from 1 to 10, but when the number becomes 6, the `break` statement is encountered and the loop is exited.

6. For Loop with Conditional Continue:
   - You can use a for loop with a conditional statement to skip an iteration.
   - Use the `continue` statement to skip the current iteration based on a condition.

```bash
#!/bin/bash

for number in {1..5}; do
    if [ $number -eq 3 ]; then
        continue
    fi
    echo "Number: $number"
done
```

Output:

```
Number: 1
Number: 2
Number: 4
Number: 5
```

In this example, the for loop iterates from 1 to 5, but when the number is 3, the `continue` statement is encountered, and that iteration is skipped.

7. While Loop with an Integer Counter:
   - You can use a while loop with an integer counter to perform a loop based on a condition.
   - Increment or modify the counter within the loop.

```bash
#!/bin/bash

counter=1

while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done
```

Output:

```
Counter: 1
Counter: 2
Counter: 3
Counter: 4
Counter: 5
```

In this example, the while loop continues as long as the counter is less than or equal to 5. The counter is incremented within the loop.

8. Until Loop Based on File Size:
   - You can use an until loop to repeatedly execute a block of code until a condition is met.
   - Check for a condition using a command or a variable.

```bash
#!/bin/bash

file="example.txt"

until [ -s "$file" ]; do
    echo "Waiting for file to have content..."
    sleep 1
done

echo "File now has content"
```

Output:

```
Waiting for file to have content...
Waiting for file to have content...
File now has content
```

In this example, the until loop checks if the file size (`-s`) is non-zero. If the file is empty, it waits for content to be added before continuing with the rest of the script.
