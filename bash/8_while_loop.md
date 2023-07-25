
1. Syntax and usage of the `while` loop:

   - The `while` loop is used to execute a block of code repeatedly as long as a condition remains true.
   - The loop continues until the condition evaluates to false.
   - The basic syntax of a `while` loop is as follows:

   ```bash
   while [ condition ]; do
       # code to execute
   done
   ```

   - The condition can be any logical or arithmetic expression that evaluates to either true (non-zero) or false (zero).
   - The loop executes the code block between `do` and `done` repeatedly until the condition becomes false.
2. Executing code block repeatedly as long as a condition is true:

   - The `while` loop starts by checking the condition.
   - If the condition is true, the code block is executed.
   - After executing the code block, the loop goes back to check the condition again.
   - If the condition is still true, the code block is executed again, and this process continues until the condition becomes false.
3. Examples of `while` loops in Bash scripts:
   Example 1: Printing numbers from 1 to 5 using a `while` loop.

   ```bash
   #!/bin/bash

   count=1

   while [ $count -le 5 ]; do
       echo $count
       ((count++))
   done
   ```

   Output:

   ```
   1
   2
   3
   4
   5
   ```

   Example 2: Reading user input until a specific condition is met using a `while` loop.

   ```bash
   #!/bin/bash

   input=""

   while [ "$input" != "quit" ]; do
       echo "Enter a value (type 'quit' to exit):"
       read input
       echo "You entered: $input"
   done
   ```

   Output:

   ```
   Enter a value (type 'quit' to exit):
   Hello
   You entered: Hello
   Enter a value (type 'quit' to exit):
   Goodbye
   You entered: Goodbye
   Enter a value (type 'quit' to exit):
   quit
   You entered: quit
   ```

   The loop continues to prompt for user input until the user enters "quit".

The `while` loop allows you to execute a code block repeatedly based on a condition. It's useful for situations where you need to iterate over a set of data or perform actions until a specific condition is met.
