
1. Time a Command:
   - You can measure the execution time of a command using the `time` command.
   - The `time` command displays the real time, user CPU time, and system CPU time taken by the command.

```bash
#!/bin/bash

time ls -l
```

Output:

```
<output of ls -l>
real    0m0.003s
user    0m0.000s
sys     0m0.003s
```

In this example, the `time` command is used to measure the execution time of the `ls -l` command.

2. Print Date:
   - You can print the current date using the `date` command without any arguments.

```bash
#!/bin/bash

date
```

Output:

```
Wed Jul 21 10:00:00 UTC 2021
```

In this example, the `date` command is used to print the current date.

3. Print Date with Format:
   - You can print the current date with a specific format using the `date` command and providing the format string.

```bash
#!/bin/bash

date +"%Y-%m-%d %H:%M:%S"
```

Output:

```
2021-07-21 10:00:00
```

In this example, the `date` command is used with the `+%Y-%m-%d %H:%M:%S` format string to print the current date in the specified format.

4. Print Seconds Elapsed for a Block of Code:
   - You can measure the time elapsed for a block of code using the `SECONDS` variable.

```bash
#!/bin/bash

start_time=$SECONDS

# Your code block here

end_time=$((SECONDS - start_time))
echo "Time elapsed: $end_time seconds"
```

Output:

```
Time elapsed: 5 seconds
```

In this example, the `SECONDS` variable is used to measure the time elapsed between the start and end of a code block.
