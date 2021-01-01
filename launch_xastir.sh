#!/bin/bash

# Pull in variable files
source $1

# Formatting variables
padding="echo"
newline="\n"

# Check for root
if [ "$EUID" -ne 0 ]
	then
		$padding
		echo "This script requires root."
		$padding
	exit
fi

# Xastir watchdog
while true; do
	# Launch xastir
	xastir
	wait
	# Wait before restarting loop
	sleep 5
	wait
# Break loop into separate process
done &\
