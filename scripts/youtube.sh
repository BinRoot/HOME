#!/bin/sh

# Play a youtube video through VLC.

pid=`ps x | grep libflashplayer.so | grep -v grep | sed -r "s/^\s*([0-9]+).*/\1/"`
fd=`lsof -p $pid | grep /tmp/Flash | sed -r "s/.*$pid\s+$USER\s+([0-9]+).*/\1/"`
vlc /proc/$pid/fd/$fd