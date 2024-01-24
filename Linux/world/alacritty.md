# References
- [alacritty](https://wiki.gentoo.org/wiki/Alacritty)

# window title
- file: `.bashrc`
```
# set PROMPT_COMMAND
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s%s@%s:%s\007" " " "${LOGNAME}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
```

# ls
- file: `/etc/DIR_COLORS`
```
TERM alacritty
```
