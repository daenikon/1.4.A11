#!/bin/bash

# RAM/2GB
ram_gb=$(free -g | awk '/Mem:/ {print int($2/2 + 0.5)}')
makeopts_jobs=$(($ram_gb < $(nproc) ? $ram_gb : $(nproc)))
echo 'MAKEOPTS="-j$makeopts_jobs -l$makeopts_jobs"'
