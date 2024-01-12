# Useful
1. **Wildcards, char classes** --> p.50 (Ch 4)
2. **Hard links vs symbolic links** --> Ch 4
3. `info coreutils` **!!! IMPORTANT !!!**
4. `/usr/share/doc` contains docs for lot of packages, those docs are usually compressed with .gz or .bz. There's `zless` and `bzless` pager for that.
5. `> [file]` to truncate or create a new file
6. `dev/null` is referred to as a "bit bucket"
7. `tail -f /var/log/messages` to view log file in real time 
8. `tee` command
9.  Double quotes suppress everything "$", "\" and "`" 
10. Single quotes suppres everything.


## File Descriptor
There's **stdin**, **stdout** and **stderr**. To redirect standard error we must refer to its
file descriptor. A program can produce output on any of several numbered file streams.
While we have referred to the first three of these file streams as standard input, output 
and error, the shell references them internally as file descriptors 0, 1, and 2, respectively.

```
[me@linuxbox ~]$ ls -l /bin/usr 2> ls-error.txt
```

## Using `cat` efficiently
Instead of
- `echo "x11-wm/dwm xinerama" >> /etc/portage/package.use/dwm.use`
I can do:
- `cat >> "x11-wm/dwm xinerama" >> /etc/portage/package.use/dwm`
It will create a file if it doesn't exist.

# Tips
## Ch. 4 p.57
Here is a useful tip: whenever you use wildcards with rm (besides carefully
checking your typing!), test the wildcard first with ls. This will let you see the
files that will be deleted. Then press the up arrow key to recall the command and
replace ls with rm.

## Ch. 6 p.85
The Difference Between > and |
At first glance, it may be hard to understand the redirection performed by the
pipeline operator | versus the redirection operator >. Simply put, the redirection
operator connects a command with a file, while the pipeline operator connects the
output of one command with the input of a second command.
`command1 > file1`
`command1 | command2`
A lot of people will try the following when they are learning about pipelines, “just
to see what happens”:
`command1 > command2`
Answer: sometimes something really bad.

## Ch. 8 p.105-106
Key         Action
`Ctrl-a`    Move cursor to the beginning of the line.
`Ctrl-e`    Move cursor to the end of the line.
`Ctrl-f`    Move cursor forward one character; same as the right arrow key.
`Ctrl-b`    Move cursor backward one character; same as the left arrow key.
`Alt-f`     Move cursor forward one word.
`Alt-b`     Move cursor backward one word.
`Ctrl-l`    Clear the screen and move the cursor to the top-left corner. The clear command does the same thing.
