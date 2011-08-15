#!/bin/bash

# Copy the most recently downloaded file to
# the current directory.

cp ~/Downloads/`ls ~/Downloads -tr | tail -n 1` .