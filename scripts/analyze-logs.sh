#!/bin/bash

LOG_FILE="${1:-sample-logs/cowrie.json.example}"

if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

echo "Analyzing: $LOG_FILE"
echo
echo "Event count:"
wc -l "$LOG_FILE"

echo
echo "Review the JSON fields for timestamp, source IP, username,"
echo "authentication result, session ID, and command activity."
