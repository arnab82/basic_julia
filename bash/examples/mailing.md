
1. Send a Mail with the `mail` Program:
   - You can use the `mail` command to send an email from the command line.

```bash
#!/bin/bash

echo "This is the body of the email" | mail -s "Subject" recipient@example.com
```

In this example, the `echo` command is used to provide the body of the email. The `mail` command is then used with the `-s` option to specify the subject of the email, followed by the recipient's email address.

2. Send a Mail with the `mail` Program and Change Subject:
   - You can use command substitution to dynamically change the subject of the email.

```bash
#!/bin/bash

subject="Important Update"
body="This is the body of the email"
echo "$body" | mail -s "$subject" recipient@example.com
```

In this example, the subject of the email is stored in a variable called `subject`. The `echo` command is used to provide the body of the email. The `mail` command is then used with the `-s` option to specify the subject of the email, using the value of the `subject` variable.

3. Send a Mail with the `mail` Program to Multiple Recipients:
   - You can provide multiple email addresses as recipients of the email.

```bash
#!/bin/bash

body="This is the body of the email"
recipients="recipient1@example.com recipient2@example.com"
echo "$body" | mail -s "Subject" $recipients
```

In this example, the email addresses of the recipients are stored in a variable called `recipients`, separated by spaces. The `echo` command is used to provide the body of the email. The `mail` command is then used with the `-s` option to specify the subject of the email, followed by the `$recipients` variable.

4. Send a Mail with the `mail` Program to CC and BCC list:
   - You can use the `-c` option to specify CC (Carbon Copy) recipients and the `-b` option to specify BCC (Blind Carbon Copy) recipients.

```bash
#!/bin/bash

body="This is the body of the email"
recipients="recipient@example.com"
cc_recipients="cc_recipient@example.com"
bcc_recipients="bcc_recipient@example.com"
echo "$body" | mail -s "Subject" -c "$cc_recipients" -b "$bcc_recipients" $recipients
```

In this example, the email addresses of the recipients, CC recipients, and BCC recipients are stored in separate variables (`recipients`, `cc_recipients`, and `bcc_recipients`, respectively). The `echo` command is used to provide the body of the email. The `mail` command is then used with the `-s` option to specify the subject of the email, followed by the `-c` and `-b` options to specify the CC and BCC recipients, respectively.

5. Print Mounts Usage with `df`:
   - You can use the `df` command to print disk usage and mount information.

```bash
#!/bin/bash

df -h > disk_usage.txt
mail -s "Disk Usage Report" recipient@example.com < disk_usage.txt
```

In this example, the `df` command with the `-h` option is used to print disk usage information in a human-readable format. The output is redirected to a file called `disk_usage.txt`. Then, the `mail` command is used to send an email with the subject "Disk Usage Report" to the recipient, with the contents of the `disk_usage.txt` file as the body of the email.

6. Send a Mail with the `mail` Program with Encoded Attachment:
   - You can use the `uuencode` command to encode a file and attach it to an email.

```bash
#!/bin/bash

attachment="file.txt"
recipient="recipient@example.com"
subject="Attachment Test"

uuencode "$attachment" "$attachment" | mail -s "$subject" $recipient
```

In this example, the `uuencode` command is used to encode the file `file.txt` and provide it as an attachment to the `mail` command. The subject of the email is set using the `subject` variable, and the recipient's email address is provided as the argument to the `mail` command.

These examples demonstrate how to use the `mail` program to send emails from the command line, change the subject of the email, send emails to multiple recipients, send emails with CC and BCC recipients, print mounts usage with `df`, and send emails with encoded attachments.
