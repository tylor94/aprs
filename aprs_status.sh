#!/bin/bash

# Script variables
cputc=$(/opt/vc/bin/vcgencmd measure_temp | cut -d "." -f 1 | cut -d "=" -f 2)
cputf=$(/opt/vc/bin/vcgencmd measure_temp | awk -F "[=\']" '{print($2 * 1.8)+32}' | cut -d "." -f 1)

# Formatting variables
padding="echo"
newline="\n"

printf ">" ;\
\
# Time
printf "$(date +%I):$(date +%M)" ;\
printf "$(date +%p)" ;\
printf "/" ;\
#printf " " ;\
\
# Battery
printf "err" ;\
printf "V" ;\
#printf " " ;\
\
# CPU temp
#printf "$cputc" ;\
#printf "C" ;\
#printf " " ;\
\
# This newline must be here or Aprx will fail to execute this script.
printf "$newline" ;\
