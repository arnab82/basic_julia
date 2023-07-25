
1. sed To Replace Matching Text:
   - You can use the `sed` command with the `s` (substitute) command to replace matching text in a file.

```bash
#!/bin/bash

sed 's/search/replace/g' input.txt > output.txt
```

In this example, the `sed` command searches for the text "search" in the `input.txt` file and replaces it with "replace". The output is redirected to the `output.txt` file. The `g` flag is used to replace all occurrences on each line.

2. sed To Replace Second Instance of Matching Text on Line:
   - You can use `sed` with the `s` command and a numeric address to replace the second instance of matching text on a line.

```bash
#!/bin/bash

sed 's/search/replace/2' input.txt > output.txt
```

In this example, the `sed` command replaces the second occurrence of the text "search" with "replace" on each line in the `input.txt` file. The output is redirected to the `output.txt` file.

3. sed to Delete Specific Lines:
   - You can use the `sed` command with the `d` command and a pattern to delete specific lines.

```bash
#!/bin/bash

sed '/pattern/d' input.txt > output.txt
```

In this example, the `sed` command deletes all lines containing the pattern specified by "pattern" in the `input.txt` file. The output is redirected to the `output.txt` file.

4. sed to Add a Line Before Matched Line:
   - You can use the `sed` command with the `i` command to add a line before a matched line.

```bash
#!/bin/bash

sed '/pattern/i new_line' input.txt > output.txt
```

In this example, the `sed` command searches for the pattern specified by "pattern" in the `input.txt` file and inserts the line "new_line" before the matched line. The output is redirected to the `output.txt` file.

5. sed to Add a Line After Matched Line:
   - You can use the `sed` command with the `a` command to add a line after a matched line.

```bash
#!/bin/bash

sed '/pattern/a new_line' input.txt > output.txt
```

In this example, the `sed` command searches for the pattern specified by "pattern" in the `input.txt` file and appends the line "new_line" after the matched line. The output is redirected to the `output.txt` file.
