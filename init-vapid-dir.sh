#!/bin/bash

if [ "$(ls -A .)" ]; then
    # not empty
    echo "skip vapid new, directory is not empty"
else
    # directory is empty
    vapid new vapid-site
fi
