
1. Execute a Command with Backticks:
   - Backticks (`` ` ``) are used to execute a command and capture its output in a variable.
   - The backticks can enclose a command or command substitution.

```bash
#!/bin/bash

output=`ls -l`
echo "Output of 'ls -l': $output"
```

In this example, the `ls -l` command is executed and its output is captured in the `output` variable using backticks. The output is then displayed.

2. Execute a Command in a Dollar Parenthesis Variable:
   - The `$()` syntax is an alternative to backticks for executing a command and capturing its output in a variable.
   - The command or command substitution is enclosed within `$()`.

```bash
#!/bin/bash

output=$(date)
echo "Current date: $output"
```

In this example, the `date` command is executed and its output is captured in the `output` variable using `$()`. The current date is then displayed.

3. Execute a Command and Capture STDOUT:
   - To capture only the standard output (STDOUT) of a command, you can redirect the output to a variable using command substitution.

```bash
#!/bin/bash

output=$(ls -l)
echo "Output of 'ls -l': $output"
```

In this example, the `ls -l` command is executed and its standard output is captured in the `output` variable. The output is then displayed.

4. Execute a Command and Capture STDERR:
   - To capture only the standard error (STDERR) of a command, you can redirect the error output to a variable using command substitution and the `2>` operator.

```bash
#!/bin/bash

error=$(ls non_existent_directory 2>&1)
echo "Error output of 'ls non_existent_directory': $error"
```

In this example, the `ls non_existent_directory` command generates an error because the directory doesn't exist. The error output is captured in the `error` variable using command substitution and the `2>&1` redirection. The error output is then displayed.

5. Execute a Command and Capture Return Code:
   - To capture the return code of a command, you can use the special variable `$?` immediately after executing the command.

```bash
#!/bin/bash

ls non_existent_directory
return_code=$?
echo "Return code: $return_code"
```

In this example, the `ls non_existent_directory` command is executed, and its return code is captured in the `return_code` variable using `$?`. The return code is then displayed.
