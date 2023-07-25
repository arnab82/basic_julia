
1. Function Prints Common Text, Call Multiple Times:
   - You can define a function that prints common text and call it multiple times within your script.

```bash
#!/bin/bash

print_hello() {
    echo "Hello, World!"
}

# Call the function multiple times
print_hello
print_hello
print_hello
```

Output:

```
Hello, World!
Hello, World!
Hello, World!
```

In this example, the `print_hello` function is defined to print the text "Hello, World!". The function is then called multiple times, resulting in the repeated output of the text.

2. Function Returns a String:
   - You can define a function that returns a string by using the `return` statement.

```bash
#!/bin/bash

get_greeting() {
    local greeting="Hello, OpenAI!"
    return "$greeting"
}

# Call the function and capture the returned string
result=$(get_greeting)

echo "Greeting: $result"
```

Output:

```
Greeting: Hello, OpenAI!
```

In this example, the `get_greeting` function defines a local variable `greeting` with the value "Hello, OpenAI!". The `return` statement is used to return the value of the `greeting` variable. The function is called, and the returned string is captured in the `result` variable and printed.

3. Function Takes Parameters, Returns Sum:
   - You can define a function that takes parameters and returns the sum of the values.

```bash
#!/bin/bash

sum_numbers() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "$sum"
}

# Call the function with parameters and capture the returned sum
result=$(sum_numbers 10 20)

echo "Sum: $result"
```

Output:

```
Sum: 30
```

In this example, the `sum_numbers` function takes two parameters `num1` and `num2`. The sum of the parameters is calculated and stored in the `sum` variable. The function then echoes the value of `sum`, which is returned as the result. The function is called with the values `10` and `20`, and the returned sum is captured in the `result` variable and printed.
