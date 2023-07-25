
1. Reading input from the user in a Bash script:

   - To read input from the user within a Bash script, you can use the `read` command.
   - The `read` command allows you to prompt the user for input and store the entered value in a variable for further processing in the script.
2. Using the `read` command to capture user input:

   - The `read` command is used to read a line of input from the user.
   - The syntax for the `read` command is as follows:

   ```bash
   read [options] variable
   ```

   - The `variable` is the name of the variable where the user input will be stored.
   - You can provide optional arguments to customize the behavior of the `read` command, such as displaying a prompt or setting a timeout.
3. Handling user input and using it in scripts:

   - Once you have captured user input using the `read` command, you can use it in your script for various purposes.
   - You can store the input in a variable and perform calculations, comparisons, or operations based on the input value.
   - You can use the input to make decisions in conditional statements like `if`, `case`, or loop constructs.
   - You can pass the input as arguments to functions or commands in your script.
   - You can display or format the input as part of the script output or interact with other parts of the script logic.

Example:

```bash
#!/bin/bash

# Reading user input
echo "Enter your name:"
read name

# Displaying a greeting using the user input
echo "Hello, $name! Welcome to the script."

# Performing operations based on the user input
echo "Enter two numbers:"
read num1 num2

sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is: $sum"
```

In this example, the script prompts the user to enter their name using the `read` command and stores the input in the `name` variable. It then displays a greeting message using the user's name. Further, it prompts the user to enter two numbers and stores them in `num1` and `num2` variables. It performs the addition of the two numbers and displays the sum.



Script Output (STDOUT) and Script Error (STDERR):

1. Understanding standard output (STDOUT) and standard error (STDERR):

   - Standard Output (STDOUT) is the default output stream where a command or script sends its normal output.
   - Standard Error (STDERR) is the output stream where error messages and diagnostic information are sent.
2. Redirecting output and errors to different streams:

   - By default, both STDOUT and STDERR are displayed on the console.
   - You can redirect STDOUT to a file using the `>` operator or append it using the `>>` operator.
   - You can redirect STDERR to a file using the `2>` operator or append it using the `2>>` operator.
   - To redirect both STDOUT and STDERR to a file, you can use `&>` or `&>>`.
   - You can also redirect output and errors to different files or discard them using special file descriptors.
3. Using `echo` and other commands to control output and errors:

   - The `echo` command is commonly used to print output to STDOUT.
   - You can use other commands, such as `printf`, to control the formatting of the output.
   - To redirect error messages or diagnostic information to STDERR, you can use the `>&2` syntax.
   - You can use conditional statements, loops, and other control structures to control the output and error messages within your script.

Examples:

Example 1: Redirecting STDOUT to a file and STDERR to another file:

```bash
#!/bin/bash

# Redirecting STDOUT to a file
echo "This is a normal message." > output.txt

# Redirecting STDERR to another file
echo "This is an error message." >&2 2> error.txt
```

In this example, the normal message is redirected to a file called `output.txt` using `>`, while the error message is redirected to `error.txt` using `>&2 2>`.

Example 2: Discarding STDERR and redirecting STDOUT to a file:

```bash
#!/bin/bash

# Discarding STDERR
echo "This is a normal message." 2> /dev/null

# Redirecting STDOUT to a file
echo "This is another normal message." > output.txt
```

In this example, the STDERR is discarded using `/dev/null`, and only the normal message is redirected to `output.txt`.

Example 3: Using `echo` and conditional statements to control output:

```bash
#!/bin/bash

number=10

if [ $number -gt 5 ]; then
    echo "The number is greater than 5."
else
    echo "The number is less than or equal to 5." >&2
fi
```

In this example, the output message is conditionally displayed based on the value of the variable `number`. If the number is greater than 5, the message is printed to STDOUT. Otherwise, an error message is sent to STDERR.
