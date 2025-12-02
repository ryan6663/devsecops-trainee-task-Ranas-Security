#!/bin/bash

# Check if a log file path is provided
if [ -z "$1" ]; then
    echo "Error: No log file provided."
    echo "Usage: $0 <log_file_path>"
    exit 1
fi

LOG_FILE="$1"

# Check if the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' does not exist."
    exit 1
fi

# Count total lines
TOTAL_LINES=$(wc -l < "$LOG_FILE")

# Count INFO, WARN, ERROR lines
INFO_LINES=$(grep -c "INFO" "$LOG_FILE")
WARN_LINES=$(grep -c "WARN" "$LOG_FILE")
ERROR_LINES=$(grep -c "ERROR" "$LOG_FILE")

# Print results
echo "Total lines: $TOTAL_LINES"
echo "INFO:  $INFO_LINES"
echo "WARN:  $WARN_LINES"
echo "ERROR: $ERROR_LINES"

