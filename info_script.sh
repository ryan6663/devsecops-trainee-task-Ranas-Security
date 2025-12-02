#!/bin/bash

# Print current user
echo "Current user: $(whoami)"

# Print current working directory
echo "Current directory: $(pwd)"

# Print APP_ENV value or default
echo "APP_ENV: ${APP_ENV:-default}"

