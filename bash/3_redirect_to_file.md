1. Redirecting Output to a File (`>`):
   The `>` operator redirects the standard output (STDOUT) of a command or a series of commands to a file. If the file doesn't exist, it creates a new file. If the file already exists, it overwrites its contents.

   Example:

   ```bash
   # Redirecting output to a file
   echo "This line will be written to the file." > output.txt
   ```

   In the above example, the output of the `echo` command is redirected to the file `output.txt`.
2. Appending Output to a File (`>>`):
   The `>>` operator appends the standard output (STDOUT) of a command to the end of a file. If the file doesn't exist, it creates a new file.

   Example:

   ```bash
   # Appending output to a file
   echo "This line will be appended to the file." >> output.txt
   ```

   In the above example, the output of the `echo` command is appended to the file `output.txt`.
3. Redirecting Input from a File (`<`):
   The `<` operator redirects the standard input (STDIN) of a command from a file instead of the keyboard. It allows you to provide input to a command from a file.

   Example:

   ```bash
   # Redirecting input from a file
   while read line; do
       echo "Read line: $line"
   done < input.txt
   ```

   In the above example, the `while` loop reads each line from the file `input.txt` instead of taking input from the keyboard.

These redirection operators provide flexibility in handling input and output in Bash scripts. They allow you to save the output of commands to files, append output to existing files, and read input from files. By combining these operators with commands and scripts, you can effectively control the flow of data in your Bash scripts.
