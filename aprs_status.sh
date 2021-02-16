#!/bin/bash

# Script variables
cputc=$(/opt/vc/bin/vcgencmd measure_temp | cut -d "." -f 1 | cut -d "=" -f 2)
#cputf=$(/opt/vc/bin/vcgencmd measure_temp | awk -F "[=\']" '{print($2 * 1.8)+32}' | cut -d "." -f 1)
load=$(cat /proc/loadavg | cut -d " " -f 3) # 15 min load
atrv=$(cat ./atrv_output.log | cut -d ">" -f 2 | cut -d "V" -f 1)
vcorr=1

# Formatting variables
padding="echo"
newline="\n"
delimiter="/"

printf ">" ;\
\
# Time
printf "@$(date +%d%H%M)" ;\
printf "$delimiter" ;\
\
# Battery
#printf "$atrv"
printf "$(echo $atrv + $vcorr | bc)"
printf "+V" ;\
printf "$delimiter" ;\
\
# CPU temp
printf "$cputc" ;\
printf "°C" ;\
printf "$delimiter" ;\
\
# CPU load
printf "$load" ;\
#printf "$delimiter" ;\
\
# This newline must be here or APRX will fail to execute this script.
printf "$newline" ;\
