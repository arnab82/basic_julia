
1. Using the `break` statement to exit a loop prematurely:

   - The `break` statement is used to terminate a loop prematurely.
   - When the `break` statement is encountered within a loop, the program immediately exits the loop and continues with the next statement after the loop.
   - It allows you to stop the loop execution based on a certain condition.
2. Using the `continue` statement to skip an iteration in a loop:

   - The `continue` statement is used to skip the rest of the current iteration and proceed to the next iteration in the loop.
   - When the `continue` statement is encountered within a loop, the remaining code in the loop block is skipped, and the loop continues with the next iteration.
   - It allows you to skip specific iterations based on a certain condition.
3. Examples of `break` and `continue` statements in Bash scripts:
   Example 1: Using the `break` statement in a loop.

   ```bash
   #!/bin/bash

   while true; do
       read -p "Enter a number (0 to exit): " number

       if [ $number -eq 0 ]; then
           break
       fi

       echo "Square of $number: $((number * number))"
   done

   echo "Exited the loop."
   ```

   Output:

   ```
   Enter a number (0 to exit): 4
   Square of 4: 16
   Enter a number (0 to exit): 3
   Square of 3: 9
   Enter a number (0 to exit): 0
   Exited the loop.
   ```

   Example 2: Using the `continue` statement in a loop.

   ```bash
   #!/bin/bash

   for number in {1..5}; do
       if [ $number -eq 3 ]; then
           continue
       fi

       echo "Current number: $number"
   done
   ```

   Output:

   ```
   Current number: 1
   Current number: 2
   Current number: 4
   Current number: 5
   ```

   In this example, the loop skips the iteration when the `number` is equal to 3 using the `continue` statement.

The `break` statement allows you to exit a loop prematurely based on a certain condition, while the `continue` statement lets you skip an iteration and proceed to the next iteration in the loop. These statements provide control over the flow of the loop and help customize the behavior based on specific conditions or requirements.
