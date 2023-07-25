
1. Working with numbers and performing arithmetic operations in Bash:

   - Bash supports basic arithmetic operations such as addition, subtraction, multiplication, division, and modulo (remainder).
   - You can perform arithmetic calculations using numerical values or variables that hold numerical values.
2. Using mathematical operators in Bash scripts:

   - Addition: `+`
   - Subtraction: `-`
   - Multiplication: `*`
   - Division: `/`
   - Modulo (remainder): `%`
3. Examples of arithmetic operations in Bash scripts:

Example 1: Addition of two numbers:

```bash
#!/bin/bash

num1=10
num2=5

sum=$((num1 + num2))
echo "Sum: $sum"
```

Output:

```
Sum: 15
```

Example 2: Subtraction of two numbers:

```bash
#!/bin/bash

num1=10
num2=5

difference=$((num1 - num2))
echo "Difference: $difference"
```

Output:

```
Difference: 5
```

Example 3: Multiplication of two numbers:

```bash
#!/bin/bash

num1=10
num2=5

product=$((num1 * num2))
echo "Product: $product"
```

Output:

```
Product: 50
```

Example 4: Division of two numbers:

```bash
#!/bin/bash

num1=10
num2=5

quotient=$((num1 / num2))
echo "Quotient: $quotient"
```

Output:

```
Quotient: 2
```

Example 5: Modulo (remainder) operation:

```bash
#!/bin/bash

num1=10
num2=5

remainder=$((num1 % num2))
echo "Remainder: $remainder"
```

Output:

```
Remainder: 0
```
