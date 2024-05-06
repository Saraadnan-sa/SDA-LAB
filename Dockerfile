# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file (if any) and install dependencies
COPY requirements.txt .

# Install Flask
RUN pip install -r requirements.txt

# Copy the Flask app into the container
COPY . .

# Set the command to run the Flask app
CMD ["python", "app.py"]
