
1. Tput Command to Print String:
   - You can use the `tput` command with the `smcup` and `rmcup` capabilities to switch to the alternate screen and print a string.

```bash
#!/bin/bash

tput smcup     # Switch to the alternate screen
tput cup 0 0   # Move the cursor to the top-left corner
echo "Hello, World!"
tput rmcup     # Switch back to the main screen
```

In this example, the `tput smcup` command switches to the alternate screen, hiding the current terminal contents. The `tput cup` command moves the cursor to the top-left corner of the screen. The `echo` command then prints the string "Hello, World!". Finally, the `tput rmcup` command switches back to the main screen, restoring the original terminal contents.

2. Tput Command to Print Number:
   - You can use the `tput` command with the `cup` capability to move the cursor to specific coordinates and print a number.

```bash
#!/bin/bash

tput cup 5 10    # Move the cursor to row 5, column 10
echo 42         # Print the number 42
```

In this example, the `tput cup` command moves the cursor to row 5, column 10. The `echo` command then prints the number 42 at that position.

3. Tput to Clear Terminal:
   - You can use the `tput` command with the `clear` capability to clear the terminal screen.

```bash
#!/bin/bash

tput clear   # Clear the terminal screen
```

In this example, the `tput clear` command clears the entire terminal screen.

4. Tput to Print Attributes of Terminal (Simple):
   - You can use the `tput` command with various capabilities to print attributes of the terminal, such as bold, underline, and color.

```bash
#!/bin/bash

tput bold
echo "This is bold text."
tput sgr0    # Reset all attributes
```

In this example, the `tput bold` command sets the text to be displayed in bold. The `echo` command then prints the text. The `tput sgr0` command resets all attributes, returning the text to normal.

5. Tput to Print Attributes of Terminal (More Complex):
   - You can use the `tput` command with more complex capabilities to change the foreground and background colors of the terminal.

```bash
#!/bin/bash

tput setaf 3   # Set the foreground color to yellow
tput setab 4   # Set the background color to blue
echo "This is yellow text on a blue background."
tput sgr0      # Reset all attributes
```

In this example, the `tput setaf 3` command sets the foreground color to yellow, and the `tput setab 4` command sets the background color to blue. The `echo` command then prints the text with the specified colors. Finally, the `tput sgr0` command resets all attributes.
