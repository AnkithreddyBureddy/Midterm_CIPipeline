# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Define environment variable
ENV PYTHONUNBUFFERED 1

# Step 6: Run the application (this is optional, depending on how you use the app)
CMD ["python", "calculator.py"]
