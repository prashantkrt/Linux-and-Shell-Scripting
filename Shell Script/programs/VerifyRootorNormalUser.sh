#!/bin/bash

if [ $UID -ne 0 ]; then
    echo "This is a normal user."
    echo " current user id is $UID"
else
    echo "This is the root user."
    echo " current user id is $UID"
    exit 1
fi
