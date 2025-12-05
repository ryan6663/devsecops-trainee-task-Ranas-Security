#!/bin/bash

show_help() {
    echo "Usage: $0 <log_file>"
    echo ""
    echo "Description:"
    echo "  Simple log analyzer that counts INFO, WARN, and ERROR messages."
    echo ""
    echo "Exit codes:"
    echo "  0 - Success"
    echo "  1 - Missing argument"
    echo "  2 - File does not exist"
}

# If no argument provided
if [ -z "$1" ]; then
    echo "Error: No log file provided."
    show_help
    exit 1
fi

FILE="$1"

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 2
fi

TOTAL=$(wc -l < "$FILE")
INFO=$(grep -c "INFO" "$FILE")
WARN=$(grep -c "WARN" "$FILE")
ERROR=$(grep -c "ERROR" "$FILE")

echo "Total lines: $TOTAL"
echo "INFO: $INFO"
echo "WARN: $WARN"
echo "ERROR: $ERROR"

exit 0
