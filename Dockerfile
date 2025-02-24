# Dockerfile

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install dependencies (make sure requirements.txt is in the root of your repo)
RUN pip install -r requirements.txt

# Expose the necessary port (if applicable)
EXPOSE 5000

# Command to run the app (this is just an example)
CMD ["python", "calculator.py"]
