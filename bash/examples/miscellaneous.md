
1. Parse JSON File with jq:
   - You can use the `jq` command to parse and manipulate JSON data.

```bash
#!/bin/bash

json_data=$(cat data.json)
parsed_data=$(echo "$json_data" | jq '.field')

echo "Parsed data: $parsed_data"
```

In this example, the contents of the JSON file `data.json` are read and stored in the `json_data` variable. The `jq` command is used to parse the JSON data and extract a specific field indicated by `.field`. The parsed data is then stored in the `parsed_data` variable and printed.

2. Print Specific Field in JSON with jq:
   - You can use `jq` to print a specific field in a JSON file.

```bash
#!/bin/bash

json_data=$(cat data.json)
field_value=$(echo "$json_data" | jq -r '.field')

echo "Field value: $field_value"
```

In this example, the contents of the JSON file `data.json` are read and stored in the `json_data` variable. The `jq` command is used to extract the value of a specific field indicated by `.field` using the `-r` option to output the raw value. The field value is then stored in the `field_value` variable and printed.

3. Print CPU Info with Pseudo Filesystem:
   - You can read CPU information from the `/proc/cpuinfo` pseudo filesystem.

```bash
#!/bin/bash

cpu_info=$(cat /proc/cpuinfo)
echo "$cpu_info"
```

In this example, the `cat` command is used to read the contents of the `/proc/cpuinfo` file, which provides information about the CPU. The CPU information is then printed.

4. Print Mem Info with Pseudo Filesystem:
   - You can read memory information from the `/proc/meminfo` pseudo filesystem.

```bash
#!/bin/bash

mem_info=$(cat /proc/meminfo)
echo "$mem_info"
```

In this example, the `cat` command is used to read the contents of the `/proc/meminfo` file, which provides information about memory usage. The memory information is then printed.

5. Print Mounts with Pseudo Filesystem:
   - You can read mount information from the `/proc/mounts` pseudo filesystem.

```bash
#!/bin/bash

mount_info=$(cat /proc/mounts)
echo "$mount_info"
```

In this example, the `cat` command is used to read the contents of the `/proc/mounts` file, which provides information about currently mounted filesystems. The mount information is then printed.

6. Print Network Stats with Pseudo Filesystem:
   - You can read network statistics from the `/proc/net/dev` pseudo filesystem.

```bash
#!/bin/bash

network_stats=$(cat /proc/net/dev)
echo "$network_stats"
```

In this example, the `cat` command is used to read the contents of the `/proc/net/dev` file, which provides network interface statistics. The network statistics are then printed.

7. Print Disk Usage with du:
   - You can use the `du` command to calculate and display disk usage.

```bash
#!/bin/bash

du -sh /path/to/directory
```

In this example, the `du` command with the `-sh` options is used to display the disk usage of the specified directory. The `-s` option displays only the total size, and the `-h` option makes the output human-readable.

8. Print Disk Usage Human Readable with du:
   - You can use the `du` command with the `-h` option to display disk usage in a human-readable format.

```bash
#!/bin/bash

du -h /path/to/directory
```

In this example, the `du` command with the `-h` option is used to display the disk usage of the specified directory in a human-readable format.

9. Create File of Specified Size with dd:
   - You can use the `dd` command to create a file of a specified size.

```bash
#!/bin/bash

file_size="1G"
file_name="output.txt"

dd if=/dev/zero of="$file_name" bs=1 count=0 seek="$file_size"
```

In this example, the `dd` command is used to create a file named "output.txt" with a size of 1 gigabyte (`1G`). The `if` parameter specifies the input device (in this case, `/dev/zero`), and the `of` parameter specifies the output file. The `bs` parameter sets the block size, and the `count` parameter sets the number of blocks to copy.

10. Time Disk Writing with dd and time:
    - You can use the `time` command in combination with `dd` to

 measure the time it takes to write data to disk.

```bash
#!/bin/bash

file_size="1G"
file_name="output.txt"

(time -p dd if=/dev/zero of="$file_name" bs=1 count=0 seek="$file_size") 2>&1
```

In this example, the `time` command is used to measure the execution time of the `dd` command. The `-p` option is used to format the output. The `if` parameter specifies the input device (`/dev/zero`), and the `of` parameter specifies the output file. The `bs` parameter sets the block size, and the `count` parameter sets the number of blocks to copy. The output of both `time` and `dd` is redirected to `stdout`.


1. Download Webpage with `curl`:
   - You can use the `curl` command to download a webpage from a URL.

```bash
#!/bin/bash

curl -o output.html https://www.example.com
```

In this example, the `curl` command with the `-o` option is used to specify the output file name (`output.html`). The URL (`https://www.example.com`) specifies the webpage to download.

2. Post to HTTP with `curl`:
   - You can use the `curl` command with the `-X` option to specify the HTTP method, and the `-d` option to specify the data to be posted.

```bash
#!/bin/bash

curl -X POST -d "param1=value1&param2=value2" https://www.example.com/api
```

In this example, the `curl` command is used to make an HTTP POST request to `https://www.example.com/api`. The `-X` option specifies the HTTP method as `POST`, and the `-d` option specifies the data to be posted (`param1=value1&param2=value2`).

3. Put Command in Background:
   - You can put a command in the background by appending an ampersand (`&`) at the end of the command.

```bash
#!/bin/bash

long_running_command &
```

In this example, the `long_running_command` is executed in the background by appending an ampersand (`&`) at the end of the command. This allows the command to run in the background while the script continues to execute other commands.

4. Resume Command From Background:
   - You can bring a command back to the foreground using the `fg` command.

```bash
#!/bin/bash

long_running_command &
fg
```

In this example, the `long_running_command` is executed in the background by appending an ampersand (`&`). The `fg` command is then used to bring the background command back to the foreground, allowing you to interact with it.

5. Execute Last Command Again with "Bang Bang" (`!!`):
   - You can execute the last command again using the "Bang Bang" (`!!`) syntax.

```bash
#!/bin/bash

!!
```

In this example, the "Bang Bang" (`!!`) syntax is used to execute the last command that was executed.

6. `tee` Command to Print to File and Screen:
   - You can use the `tee` command to redirect output to both a file and the screen.

```bash
#!/bin/bash

command | tee output.txt
```

In this example, the `command` is executed, and the output is both printed to the screen and redirected to the file `output.txt` using the `tee` command.

These examples demonstrate how to use `curl` to download webpages and make HTTP requests, put commands in the background, resume commands from the background, execute the last command again with "Bang Bang" (`!!`), and use the `tee` command to print output to both a file and the screen.
