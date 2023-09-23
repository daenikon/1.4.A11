# What I Did
* `/etc/cron.allow` neo
* `/etc/cron.deny`  all

# How It Works
Table From [cron](https://en.wikipedia.org/wiki/Cron) wiki page
```
# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                   7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * * <command to execute>
```
* [Cron expression](https://en.wikipedia.org/wiki/Cron#Cron_expression) is an interesting read

# References
123 [^1]
[^1]: [Wiki](https://en.wikipedia.org/wiki/Cron)
