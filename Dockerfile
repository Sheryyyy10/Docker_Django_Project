# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required dependencies
RUN pip install -r requirements.txt

# Copy the entire project into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run the application
CMD ["python", "myproject/manage.py", "runserver", "0.0.0.0:8000"]
