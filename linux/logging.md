# Syslog daemon
- metalog

# Config
- `/etc/conf.d/metalog` - Gentoo's config file for /etc/init.d/metalog daemon.
- `/etc/metalog.conf` - Global (system wide) configuration file.

Added an entry to `/etc/metalog.conf` to catch all `local7`-facility in
`/var/log/custom-logs` directory. For now all of my custom cron jobs will
log info/errors to `local7` facility via `logger` command like: 
- `logger -t "emerge-sync" -p local7.info "[INFO] emerge --sync successful"`


## Scripts
- `/usr/local/bin/emerge_sync.sh`

## Cron daemon
- I use fcron, since it works with not constantly-running machines.
- Disabled `system-crontab` flag, therefore `/etc/cron/*` works, but not `/etc/crontab` and `/etc/cron.d
