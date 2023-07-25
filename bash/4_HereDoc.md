
1. Using HereDoc to input multiple lines of text in a script:

   - HereDoc is a convenient way to input multiple lines of text interactively within a script.
   - It allows you to provide a block of text without the need for escaping characters or using external files.
2. Syntax and usage of HereDoc:

   - HereDoc is specified using the `<<` operator followed by a delimiter (which can be any word you choose) at the beginning and end of the text block.
   - The text block can be indented or aligned with tabs or spaces.
   - The HereDoc text block can include variables, command substitutions, and other shell expansions.
   - The HereDoc can be assigned to a variable or directly used as input for a command.
3. Examples of HereDoc in Bash scripts:
   Example 1: Using HereDoc to assign a multiline string to a variable.

   ```bash
   #!/bin/bash
   message=$(cat <<END
   This is a multiline
   string assigned to a variable.
   It can span multiple lines
   without any special escaping needed.
   END
   )

   echo "$message"
   ```

   Output:

   ```
   This is a multiline
   string assigned to a variable.
   It can span multiple lines
   without any special escaping needed.
   ```

   Example 2: Using HereDoc as input for a command.

   ```bash
   #!/bin/bash
   cat <<END
   This is line 1.
   This is line 2.
   This is line 3.
   END
   ```

   Output:

   ```
   This is line 1.
   This is line 2.
   This is line 3.
   ```

   Example 3: HereDoc with command substitution.

   ```bash
   #!/bin/bash
   name="Alice"
   greeting=$(cat <<END
   Hello, $name!
   The current date is: $(date +%Y-%m-%d)
   END
   )

   echo "$greeting"
   ```

   Output:

   ```
   Hello, Alice!
   The current date is: 2023-07-17
   ```

These examples illustrate different uses of HereDoc in Bash scripts. Whether it's assigning a multiline string to a variable, providing input to a command, or using command substitution within HereDoc, you can leverage this feature to handle multiple lines of text conveniently within your scripts.
