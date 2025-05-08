#!/bin/bash

if [ "$#" -eq 2 ]; then
    python3 collect_files.py "$1" "$2"
elif [ "$#" -eq 4 ] && [ "$3" = "--max_depth" ]; then
    python3 collect_files.py "$1" "$2" --max_depth "$4"
else
    exit 1
fi
