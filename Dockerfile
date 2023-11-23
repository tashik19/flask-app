# Use the official Python 3.10 image as a base image
FROM python:3.10

# Set the working directory to /app in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside the container
EXPOSE 5000

# Set the default command to execute
# when creating a new container to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
