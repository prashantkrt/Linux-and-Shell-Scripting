#!/bin/bash

host="google.com"

# &> → Redirects both stdout and stderr
# stdout → standard output (normal text)
# stderr → standard error (error messages)
# &> is a shortcut in Bash to redirect both of these to a single place.
# Ping the host 3 times, but hide all output and errors (don’t show anything on the screen)
ping -c 3 $host &> /dev/null #/dev/null is a special file in Linux called the "black hole" or "bit bucket". Anything sent there is discarded — gone forever.

if [[ $? -eq 0 ]]; then #$? holds the exit status of last executed command
    echo "$host is reachable."
else
    echo "$host is not reachable."
fi
