
1. Menu Option with Select Command:
   - The `select` command allows you to create a menu-based interactive selection in your Bash script.

```bash
#!/bin/bash

select option in "Option 1" "Option 2" "Option 3" "Quit"; do
    case $option in
        "Option 1")
            echo "You selected Option 1"
            ;;
        "Option 2")
            echo "You selected Option 2"
            ;;
        "Option 3")
            echo "You selected Option 3"
            ;;
        "Quit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
```

In this example, the `select` command presents a menu with options "Option 1", "Option 2", "Option 3", and "Quit". The user can choose an option by entering the corresponding number. The selected option is then processed within the `case` statement.

2. Menu Option with Select Command from Array Variable:
   - You can use an array variable with the `select` command to create a menu-based selection.

```bash
#!/bin/bash

options=("Option 1" "Option 2" "Option 3" "Quit")

select option in "${options[@]}"; do
    case $option in
        "Option 1")
            echo "You selected Option 1"
            ;;
        "Option 2")
            echo "You selected Option 2"
            ;;
        "Option 3")
            echo "You selected Option 3"
            ;;
        "Quit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
```

In this example, the `select` command uses the array variable `options` to create a menu-based selection. The selected option is then processed within the `case` statement.

3. Split String by Space:
   - You can split a string into separate fields based on spaces using the `read` command.

```bash
#!/bin/bash

string="Hello World"

read -ra words <<< "$string"

for word in "${words[@]}"; do
    echo "$word"
done
```

Output:

```
Hello
World
```

In this example, the `read` command with the `-a` option reads the string into an array variable `words` by splitting it based on spaces. The array elements are then printed.

4. Split String by Custom Delimiter:
   - You can split a string into separate fields based on a custom delimiter using the `IFS` (Internal Field Separator) variable.

```bash
#!/bin/bash

string="Apple,Orange,Banana"

IFS=',' read -ra fruits <<< "$string"

for fruit in "${fruits[@]}"; do
    echo "$fruit"
done
```

Output:

```
Apple
Orange
Banana
```

In this example, the `IFS` variable is set to a comma (`,`) to specify the delimiter. The `read` command reads the string into an array variable `fruits`, splitting it based on the comma. The array elements are then printed.

5. Split String into Array Variable:
   - You can split a string into an array variable directly using the `declare` command.

```bash
#!/bin/bash

string="One Two Three"

declare -a array=($string)

for element in "${array[@]}"; do
    echo "$element"
done
```

Output:

```
One
Two
Three
```

In this example, the `declare` command declares an array variable `array` and assigns the elements of the string to it directly. The array elements are then printed.

6. Split String by Multi-Byte Delimiter:
   - You can split a string into separate fields based on a multi-byte delimiter using the `awk` command.

```bash
#!/bin/bash

string="Apple_Orange_Banana"

IFS=$(echo -en "_") read -ra fruits <<< "$string"

for fruit in "${fruits[@]}"; do
    echo "$fruit"
done
```

Output:

```
Apple
Orange
Banana
```

In this example, the `IFS` variable is set to the multi-byte delimiter `_` using the `echo` command. The `read` command reads the string into an array variable `fruits`, splitting it based on the delimiter. The array elements are then printed.
