# Use a small base image
FROM python:3.12-slim

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Copy the script into the container
COPY info_script.sh .

# Make the script executable
RUN chmod +x info_script.sh

# Switch to non-root user
USER appuser

# Run the script by default
CMD ["./info_script.sh"]

