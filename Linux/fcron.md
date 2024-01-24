## Log file
I've created `/var/log/fcron.log` file and changed its permissions to
be writeable by all user's that are in "cron" group and therefore by their
fcrontab.
- `chown :cron /var/log/fcron.log`
- `chown 664 /var/log/fcron.log`

## Scripts
- `/usr/local/bin/fcron-msg.sh`

### root
- weekly `emerge --sync`
