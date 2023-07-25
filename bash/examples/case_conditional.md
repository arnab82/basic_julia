
1. Case Conditional Statement With Numbers:
   - The `case` statement allows you to perform conditional branching based on the value of a variable or expression.
   - You can use the `case` statement to match specific numerical values or ranges.

```bash
#!/bin/bash

number=3

case $number in
    1)
        echo "Number is 1"
        ;;
    2)
        echo "Number is 2"
        ;;
    3)
        echo "Number is 3"
        ;;
    *)
        echo "Number is not 1, 2, or 3"
        ;;
esac
```

Output:

```
Number is 3
```

In this example, the `case` statement checks the value of the `number` variable. It matches the value `3` and executes the corresponding code block.

2. Case Conditional Statement With String:
   - The `case` statement can also be used to perform conditional branching based on string values.
   - You can match specific strings or patterns using the `case` statement.

```bash
#!/bin/bash

fruit="apple"

case $fruit in
    "apple")
        echo "It's an apple"
        ;;
    "banana")
        echo "It's a banana"
        ;;
    "orange")
        echo "It's an orange"
        ;;
    *)
        echo "It's neither an apple, banana, nor orange"
        ;;
esac
```

Output:

```
It's an apple
```

In this example, the `case` statement checks the value of the `fruit` variable. It matches the string `"apple"` and executes the corresponding code block.

3. Case Conditional Statement With Wildcards:
   - The `case` statement in Bash supports wildcards or pattern matching for more flexible matching.
   - You can use wildcards such as `*` (matches any string) or `?` (matches any single character) in the patterns.

```bash
#!/bin/bash

word="hello"

case $word in
    he*)
        echo "Word starts with 'he'"
        ;;
    *lo)
        echo "Word ends with 'lo'"
        ;;
    *)
        echo "Word doesn't match the patterns"
        ;;
esac
```

Output:

```
Word starts with 'he'
```

In this example, the `case` statement checks the value of the `word` variable. It matches the pattern `he*` and executes the corresponding code block.
