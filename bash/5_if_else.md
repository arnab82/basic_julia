
1. Introduction to conditional statements:

   - Conditional statements in Bash allow you to control the flow of your script based on certain conditions.
   - These statements let you execute different blocks of code depending on whether a condition is true or false.
2. Syntax and usage of the `if` statement in Bash:

   - The `if` statement evaluates a condition and executes a block of code if the condition is true.
   - The basic syntax of an `if` statement is as follows:

   ```bash
   if [ condition ]; then
       # code to execute if the condition is true
   fi
   ```

   - The condition can be a logical or arithmetic expression.
   - The condition is enclosed in square brackets `[ ]`, and a space is required between the brackets and the condition.
3. Using comparison operators (`-eq`, `-ne`, `-lt`, `-gt`, etc.) in `if` statements:

   - Bash provides various comparison operators to evaluate conditions.
   - Common comparison operators include `-eq` (equal), `-ne` (not equal), `-lt` (less than), `-gt` (greater than), `-le` (less than or equal to), `-ge` (greater than or equal to), etc.
4. Examples of `if`, `else`, and `elif` statements in Bash scripts:
   Example 1: Using `if` statement with a simple condition.

   ```bash
   #!/bin/bash

   number=10

   if [ $number -eq 10 ]; then
       echo "The number is 10."
   fi
   ```

   Output:

   ```
   The number is 10.
   ```

   Example 2: Using `if` statement with an `else` block.

   ```bash
   #!/bin/bash

   number=5

   if [ $number -gt 10 ]; then
       echo "The number is greater than 10."
   else
       echo "The number is less than or equal to 10."
   fi
   ```

   Output:

   ```
   The number is less than or equal to 10.
   ```

   Example 3: Using `if`, `elif`, and `else` statements.

   ```bash
   #!/bin/bash

   age=25

   if [ $age -lt 18 ]; then
       echo "You are a minor."
   elif [ $age -ge 18 ] && [ $age -le 64 ]; then
       echo "You are an adult."
   else
       echo "You are a senior citizen."
   fi
   ```

   Output:

   ```
   You are an adult.
   ```

These examples demonstrate the usage of `if`, `else`, and `elif` statements in Bash scripts. You can use these conditional statements to control the flow of your script based on various conditions and perform different actions accordingly.
