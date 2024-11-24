# Use the official Rasa image 
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Expose the default Rasa API port
EXPOSE 5005

# Specify the start command for Nixpacks and Docker
CMD ["/opt/venv/bin/rasa", "run", "--enable-api", "--cors", "*", "--model", "models/latest.tar.gz", "--port", "5005","--no-prediction", "--disable-torch"]
