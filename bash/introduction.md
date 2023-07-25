1. Introduction to Bash scripting:

   - Bash (Bourne Again SHell) is a popular command-line shell and scripting language used in Unix-based operating systems.
   - Bash scripting allows you to automate tasks and write scripts to execute a series of commands.
   - It provides features like variables, loops, conditionals, and functions to build powerful scripts.
2. How to create a Bash script:

   - Open a text editor and create a new file with a ".sh" extension.
   - Add the shebang line as the first line of the script (`#!/bin/bash`).
   - Write your desired commands in the script file.

   Example: Create a script named "hello.sh" that prints "Hello, World!".

   ```bash
   #!/bin/bash
   echo "Hello, World!"
   ```
3. Running the script using the shebang line:

   - The shebang line `#!/bin/bash` at the beginning of the script tells the system which interpreter to use.
   - Make the script executable using the `chmod +x` command.

   Example: Make the "hello.sh" script executable.

   ```bash
   chmod +x hello.sh
   ```
4. Printing output using the echo command:

   - The `echo` command is used to print text or variables to the console.

   Example: Modify the "hello.sh" script to print a variable.

   ```bash
   #!/bin/bash
   greeting="Hello, World!"
   echo $greeting
   ```
5. Executing the script:

   - To execute the script, use the `./` prefix followed by the script name.

   Example: Run the "hello.sh" script.

   ```bash
   ./hello.sh
   ```

   Output: `Hello, World!`

These examples provide a basic understanding of Bash scripting. You can create more complex scripts by incorporating variables, loops, conditionals, and other features available in Bash.
