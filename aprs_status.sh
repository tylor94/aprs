#!/bin/bash

# Script variables
cputc=$(/opt/vc/bin/vcgencmd measure_temp | cut -d "." -f 1 | cut -d "=" -f 2)
#cputf=$(/opt/vc/bin/vcgencmd measure_temp | awk -F "[=\']" '{print($2 * 1.8)+32}' | cut -d "." -f 1)
load=$(cat /proc/loadavg | cut -d " " -f 3) # 15 min load

# Formatting variables
padding="echo"
newline="\n"
delimiter=" | "

printf ">" ;\
\
# Time
printf "$(date +%I):$(date +%M)" ;\
printf " $(date +%p)" ;\
printf "$delimiter" ;\
#printf " " ;\
\
# Battery
#printf "err" ;\
#printf "*V" ;\
#printf "$delimiter" ;\
#printf " " ;\
\
# CPU temp
printf "$cputc" ;\
printf "°C" ;\
printf "$delimiter" ;\
#printf " " ;\
\
# CPU load
printf "$load" ;\
#printf "$delimiter" ;\
#printf " " ;\
\
# This newline must be here or APRX will fail to execute this script.
printf "$newline" ;\
