1. Awk Split On Whitespace:
   - By default, `awk` splits input lines into fields based on whitespace (spaces or tabs).

```bash
#!/bin/bash

awk '{print $1, $2, $3}' file.txt
```

In this example, `awk` reads lines from the file `file.txt` and splits them into fields based on whitespace. The fields are then printed using `$1`, `$2`, and `$3`, representing the first, second, and third fields, respectively.

2. Awk Print Last Field in Each Line:
   - You can use `awk` to print the last field in each line by accessing the field number `NF`, which represents the total number of fields.

```bash
#!/bin/bash

awk '{print $NF}' file.txt
```

In this example, `awk` reads lines from the file `file.txt` and prints the last field in each line using `$NF`, where `NF` represents the total number of fields.

3. Awk Print Only Match of Regex:
   - You can use `awk` to print only the match of a regular expression by using the `match()` function.

```bash
#!/bin/bash

awk 'match($0, /regex/){print substr($0, RSTART, RLENGTH)}' file.txt
```

In this example, `awk` searches each line in the file `file.txt` for the regular expression `/regex/` using the `match()` function. If a match is found, it prints the matched substring using `substr($0, RSTART, RLENGTH)`, where `RSTART` and `RLENGTH` are special variables that store the starting position and length of the matched substring, respectively.

4. Awk With If-Else Condition:
   - You can use `awk` with an if-else condition to perform different actions based on certain conditions.

```bash
#!/bin/bash

awk '{if ($1 > 10) print "Greater than 10"; else print "Less than or equal to 10"}' file.txt
```

In this example, `awk` reads lines from the file `file.txt` and checks if the value of the first field is greater than 10. If it is, it prints "Greater than 10"; otherwise, it prints "Less than or equal to 10".

5. Awk With Ternary Operator:
   - You can use the ternary operator (`? :`) in `awk` to perform conditional operations in a more concise way.

```bash
#!/bin/bash

awk '{print ($1 > 10 ? "Greater than 10" : "Less than or equal to 10")}' file.txt
```

In this example, `awk` reads lines from the file `file.txt` and checks if the value of the first field is greater than 10. If it is, it prints "Greater than 10"; otherwise, it prints "Less than or equal to 10" using the ternary operator (`? :`).

These examples demonstrate how to use `awk` to split input on whitespace, print the last field in each line, print only the match of a regex, use `awk` with an if-else condition, and use `awk` with the ternary operator.
