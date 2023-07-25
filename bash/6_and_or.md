
AND Operator (`&&`):

1. Using the `&&` operator to combine conditions:

   - The `&&` operator is used to combine multiple conditions in an `if` statement or a command.
   - It requires both conditions to be true for the combined expression to be true.
   - If the first condition evaluates to false, the second condition is not checked because of short-circuit evaluation.
2. Short-circuit evaluation in Bash:

   - Short-circuit evaluation means that if the value of an expression can be determined without evaluating the entire expression, further evaluation is skipped.
   - In the case of the `&&` operator, if the first condition is false, there is no need to evaluate the second condition since the combined expression will always be false.
3. Examples of using the `&&` operator in Bash scripts:
   Example 1: Using `&&` in an `if` statement:

   ```bash
   #!/bin/bash

   age=25
   citizenship="US"

   if [ $age -ge 18 ] && [ $citizenship == "US" ]; then
       echo "You are eligible to vote."
   else
       echo "You are not eligible to vote."
   fi
   ```

   Output:

   ```
   You are eligible to vote.
   ```

   Example 2: Using `&&` in a command:

   ```bash
   #!/bin/bash

   rm file.txt && echo "File deleted successfully."
   ```

   Output:

   ```
   File deleted successfully.
   ```

OR Operator (`||`):

1. Using the `||` operator to combine conditions:

   - The `||` operator is used to combine multiple conditions in an `if` statement or a command.
   - It requires at least one of the conditions to be true for the combined expression to be true.
   - If the first condition evaluates to true, the second condition is not checked because of short-circuit evaluation.
2. Short-circuit evaluation in Bash:

   - Similar to the `&&` operator, the `||` operator also employs short-circuit evaluation.
   - If the first condition is true, there is no need to evaluate the second condition since the combined expression will always be true.
3. Examples of using the `||` operator in Bash scripts:
   Example 1: Using `||` in an `if` statement:

   ```bash
   #!/bin/bash

   age=15
   citizenship="US"

   if [ $age -ge 18 ] || [ $citizenship == "US" ]; then
       echo "You are eligible to vote."
   else
       echo "You are not eligible to vote."
   fi
   ```

   Output:

   ```
   You are not eligible to vote.
   ```

   Example 2: Using `||` in a command:

   ```bash
   #!/bin/bash

   rm file.txt || echo "Failed to delete file."
   ```

   Output (if the file doesn't exist):

   ```
   Failed to delete file.
   ```

   Output (if the file exists and is successfully deleted):
   _(No output)_

These examples demonstrate the usage of the AND (`&&`) and OR (`||`) operators in Bash scripts. You can combine conditions or commands using these operators to control the flow of your script based on multiple conditions or handle command execution based on success or failure.
