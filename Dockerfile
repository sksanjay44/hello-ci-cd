# Use official Python image as base
FROM python:3.12-slim

# Set working directory in container
WORKDIR /app

# Copy local files to container
COPY hello.py .

# If you have dependencies, copy requirements.txt and install
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Default command to run your Python script
CMD ["python", "hello.py"]

