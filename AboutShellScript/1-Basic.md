## File Descriptor | Redirection
There are three types of descriptors, 0, 1, 2.
`0` is stdin, `1` is stdout, and `2` is stderr.

`Command 1> output` saves the standard output to the output.
`Command 2> error` saves the standard error to the output.

---

`/dev/null` file is always kept empty. Thus, if output isn't needed, send it to `/dev/null`.

```
echo Hello > /dev/null
echo Hello 1> /dev/null
echo Hello 2> /dev/null
```
First command and second yield nothing, whereas the third command just prints out Hello.

```
Command 2>&1    # Sends the stderr to the place where stdout is referencing
Command 1>&2    # Sends the stdout to the place where stderr is referencing
```
