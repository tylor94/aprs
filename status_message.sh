#!/bin/bash

# Script variables
cputc=$(/opt/vc/bin/vcgencmd measure_temp | cut -d "." -f 1 | cut -d "=" -f 2)
cputf=$(/opt/vc/bin/vcgencmd measure_temp | awk -F "[=\']" '{print($2 * 1.8)+32}' | cut -d "." -f 1)

# Formatting variables
padding="echo"
newline="\n"

printf ">" ;\
\
#printf "Time:" ;\
printf "$(date +%H):$(date +%M) " ;\
\
#printf "Bat:" ;\
printf "err'V " ;\
\
#printf "CPU:" ;\
printf "$cputc'C " ;\
\
# !!! These can only be pulled from OBD with ecu on, useless with ecu off.
#printf "Intk:" ;\
#printf "err'F " ;\
#\
#printf "Eng:" ;\
#printf "err'F " ;\
\
printf "$newline" ;\
