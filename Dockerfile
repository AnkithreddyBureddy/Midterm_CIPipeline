# Use official Python image as base
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the app's port (optional)
EXPOSE 5000

# Command to run the application
CMD ["python", "calculator.py"]
