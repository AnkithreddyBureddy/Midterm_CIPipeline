# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the tests (assuming they are in 'tests' directory)
CMD ["python", "-m", "unittest", "discover", "-s", "tests"]
