
1. Head Command With Default Args:
   - The `head` command can be used with default arguments to print the first 10 lines of a file.

```bash
#!/bin/bash

head file.txt
```

In this example, the `head` command is used without specifying any arguments. By default, it prints the first 10 lines of the file `file.txt`.

2. Head Command to Print First 100 Lines:
   - You can use the `head` command with the `-n` option to specify the number of lines to print.

```bash
#!/bin/bash

head -n 100 file.txt
```

In this example, the `head` command with the `-n` option is used to print the first 100 lines of the file `file.txt`.

3. Tail Command With Default Args:
   - The `tail` command can be used with default arguments to print the last 10 lines of a file.

```bash
#!/bin/bash

tail file.txt
```

In this example, the `tail` command is used without specifying any arguments. By default, it prints the last 10 lines of the file `file.txt`.

4. Tail Command to Print Last 100 Lines:
   - You can use the `tail` command with the `-n` option to specify the number of lines to print.

```bash
#!/bin/bash

tail -n 100 file.txt
```

In this example, the `tail` command with the `-n` option is used to print the last 100 lines of the file `file.txt`.

5. Find Command to Locate Matching Pattern Files:
   - You can use the `find` command with the `-name` option and a pattern to locate files that match a specific pattern.

```bash
#!/bin/bash

find /path/to/directory -name "*.txt"
```

In this example, the `find` command is used to search for files with the extension `.txt` in the directory `/path/to/directory`.

6. Find Command to Locate Files Based on Date:
   - You can use the `find` command with the `-newer` option to locate files based on a specific date.

```bash
#!/bin/bash

find /path/to/directory -type f -newermt "2022-01-01"
```

In this example, the `find` command is used to locate files in the directory `/path/to/directory` that are newer than January 1, 2022.

7. Cut Command to Parse Delimited Columns of Data:
   - You can use the `cut` command with the `-d` option to specify the delimiter and the `-f` option to specify the field/column to extract.

```bash
#!/bin/bash

cut -d ',' -f 2 file.csv
```

In this example, the `cut` command with the `-d` option is used to set the delimiter to `,` (comma), and the `-f` option is used to extract the second field/column from the file `file.csv`.

8. Grep Command to Search for a Pattern:
   - You can use the `grep` command to search for a specific pattern in a file.

```bash
#!/bin/bash

grep "pattern" file.txt
```

In this example, the `grep` command is used to search for the word "pattern" in the file `file.txt`.

9. Grep Command to Search for the Lack of a Pattern:
   - You can use the `-v` option with the `grep` command to search for lines that do not contain a specific pattern.

```bash
#!/bin/bash

grep -v "pattern" file.txt
```

In this example, the `grep` command with the `-v` option is used to search for lines in the file `file.txt` that do not contain the word "pattern".

10. Grep Command to Search for a Case-Insensitive Pattern:
    - You can use the `-i` option with the `grep` command to perform a case-insensitive search for a specific pattern.

```bash
#!/bin/bash

grep -i "pattern" file.txt
```

In this example, the `grep` command with the `-i` option is used to search for the word "pattern" in a case-insensitive manner in the file `file.txt`.

11. Grep Command with Wildcards:
    - You can use wildcards, such as `*` and `?`, with the `grep` command to search for patterns with unknown characters.

```bash
#!/bin/bash

grep "keyw*rd" file.txt
```

In this example, the `grep` command is used to search for the word "keyword" with an unknown number of characters between "keyw" and "rd" in the file `file.txt`.

12. Grep Command to Search All Files in a Directory Recursively:
    - You can use

 the `-r` option with the `grep` command to search for a pattern in all files in a directory recursively.

```bash
#!/bin/bash

grep -r "pattern" /path/to/directory
```

In this example, the `grep` command with the `-r` option is used to search for the word "pattern" in all files in the directory `/path/to/directory` and its subdirectories.

13. Grep Command to Search for a File in a Directory Recursively:
    - You can use the `grep` command in combination with `find` to search for a specific file in a directory recursively.

```bash
#!/bin/bash

find /path/to/directory -name "filename.txt" -exec grep "pattern" {} +
```

In this example, the `find` command is used to locate the file named "filename.txt" in the directory `/path/to/directory`. The `-exec` option is used to execute the `grep` command on each found file, searching for the word "pattern".
