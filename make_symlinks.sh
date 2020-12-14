#!/bin/bash

# Formatting variables
padding="echo"
newline="\n"

# Make symlinks from external confgs in folders
ln -s /etc/aprx.conf ./ ;\
ln -s /etc/ser2net.conf ./ ;\
ln -s ~/btserial/bin/kill_rfcomm.sh ./ ;\
ln -s ~/btserial/bin/kill_scripts.sh ./ ;\
