# Use official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy your script into the container
COPY hello.py .

# Command to run your script
CMD ["python", "hello.py"]

