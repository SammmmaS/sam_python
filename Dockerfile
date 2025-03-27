# Use official Python 3.11 image as base
FROM python:3.11-slim

# Set working directory in the container
WORKDIR /app

# Copy dependencies file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files into container
COPY . .

# Run your app
CMD ["python", "app/main.py"]