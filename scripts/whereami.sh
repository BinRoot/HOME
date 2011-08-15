#!/bin/bash

# Displays location of computer based off wifi

echo -n "{\"version\": \"1.1.0\",\"host\": \"maps.google.com\",\"request_address\": true,\"address_language\": \"en_GB\", \"wifi_towers\": [`iwlist scan 2> /dev/null | tr -d '\n' | sed -e 's/Cell [0-9]* - Address: \([0-9A-Z:]*\)[^C]*Channel:\([0-9]*\)[^S]*Signal level=\([0-9-]*\) dBm[^E]*E[^E]*ESSID:"\([^"]*\)"/\{"mac_address": "\1","signal_strength": \3,"age": 0,"channel": \2,"ssid": "\4"}/g' -e 's/[^{]*{/{/' -e 's/}[^{]*{/},{/g' -e 's/\}[^}]*$/\}/' `]}" | curl -s -X POST -d @/dev/fd/0 http://www.google.com/loc/json

# TIP: run with sudo for improved accuracy since iwlist can then provide more than the active hotspot