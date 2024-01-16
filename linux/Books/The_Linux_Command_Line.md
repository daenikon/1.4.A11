# Useful
1. **Wildcards, char classes** --> p.50 (Ch 4)
2. **Hard links vs symbolic links** --> Ch 4
3. `info coreutils` **!!! IMPORTANT !!!**
4. `/usr/share/doc` contains docs for lot of packages, those docs are usually compressed with .gz or .bz. There's `zless` and `bzless` pager for that.
5. `> [file]` to truncate or create a new file
6. `dev/null` is referred to as a "bit bucket"
7. `tail -f /var/log/messages` to view log file in real time 
8. `tee` command
9.  Double quotes suppress everything except "$", "\" and "`" 
10. Single quotes suppress everything.
11. Load average refers to the number of processes
    that are waiting to run, that is, the number of
    processes that are in a runnable state and are
    sharing the CPU. Three values are shown, each
    for a different period of time. The first is the
    average for the last 60 seconds, the next the
    previous 5 minutes, and finally the previous 15
    minutes. Values less than 1.0 indicate that the
    machine is not busy.

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

## Ch. 8

### Key Bindings
#### Cursor Movement
| Key      | Action                                                                                               |
|----------|------------------------------------------------------------------------------------------------------|
|`Ctrl-a`  | Move cursor to the beginning of the line.|
|`Ctrl-e`  | Move cursor to the end of the line.|
|`Ctrl-f`  | Move cursor forward one character; same as the right arrow key.|
|`Ctrl-b`  | Move cursor backward one character; same as the left arrow key.|
|`Alt-f`   | Move cursor forward one word.|
|`Alt-b`   | Move cursor backward one word.|
|`Ctrl-l`  | Clear the screen and move the cursor to the top-left corner. The clear command does the same thing.|

#### Modifying Text
| Key      | Action                                                                                               |
|----------|------------------------------------------------------------------------------------------------------|
|`Ctrl-d`  | Delete the character at the cursor location.|
|`Ctrl-t`  | Transpose (exchange) the character at the cursor location with the one preceding it.|
|`Alt-t`   | Transpose the word at the cursor location with the one preceding it.|
|`Alt-l`   | Convert the characters from the cursor location to the end of the word to lowercase.|
|`Alt-u`   | Convert the characters from the cursor location to the end of the word to uppercase.|

#### Killing and Yanking text
* buffer is call **kill-ring**

| Key      | Action                                                                                               |
|----------|------------------------------------------------------------------------------------------------------|
|`Ctrl-k`  |     Kill text from the cursor location to the end of line.|
|`Ctrl-u`  |     Kill text from the cursor location to the beginning of the line.|
|`Alt-d`   |     Kill text from the cursor location to the end of the current word.|
|`Alt-Backspace`| Kill text from the cursor location to the beginning of the current word. If the cursor is at the beginning of a word, kill the previous word.|
|`Ctrl-y`  |     Yank text from the kill-ring and insert it at the cursor location.|

### History Expansion
- `history`
- `![number]` expands line [number] contents.
- `Ctrl+r` starts incremental history search (further improved with fzf)
#### History Commands
| Key      | Action                                                                                               |
|----------|------------------------------------------------------------------------------------------------------|
|`Ctrl-p`   | Move to the previous history entry. This is the same action as the up arrow.|
|`Ctrl-n`   | Move to the next history entry. This is the same action as the down arrow. |
|`Alt-<`    | Move to the beginning (top) of the history list.|
|`Alt->`    | Move to the end (bottom) of the history list, i.e., the current command line. |
|`Ctrl-r`   | Reverse incremental search. This searches incrementally from the current command line up the history list.|
|`Alt-p`    | Reverse search, nonincremental. With this key, type in the search string and press enter before the search is performed. |
|`Alt-n`    | Forward search, nonincremental. |
|`Ctrl-o`   | Execute the current item in the history list and advance to the next one. This is handy if we are trying to re-execute a sequence of commands in the history list. |

#### History Expansion Commands
| Sequence  | Action |
|-----------|--------|
|`!!`       | Repeat the last command. It is probably easier to press up arrow and enter.|
|`!number`  | Repeat history list item number.|
|`!string`  | Repeat last history list item starting with string.|
|`!?string` | Repeat last history list item containing string.|

## Ch 10
* Programs can be in the **foreground** and in the **background**. \

### General
* Job number is called **jobspec**
* `Ctrl-C` interrupts the program, which means it politely asks it to terminate. Not all programms can be interrupted with this technique.
* `ps` vs `jobs`
    - `ps` shows what processes are launched from this particular terminal session.
    > `man(1)` output: reports a snapshot of current processes.
    - `jobs` shows jobs/processes that were either put in a background or suspended.
    > `--help` flag output: displays status of jobs.

### BACKGROUND
1. `[[command]] &` launches a programm and puts in the background. It also returns job number (**jobspec**) and PID of the programm.

### FOREGROUND
* `[[command]]` launches programm by default in foreground.
* `fg %1` --> return process with jobspec 1 to the foreground. If there's just 1 job the argument is optional.

#### Pausing the process

