#!/bin/bash

if [ "$(ls -A . | grep -v .keep | wc -l)" -ne 0 ]; then
    # not empty
    echo "skip vapid new, directory is not empty"
else
    # directory is empty
    vapid new vapid-site
fi
