# Use the official Rasa image 
FROM rasa/rasa:3.3.0

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Expose the default Rasa API port
EXPOSE 5005

# Specify the start command for Nixpacks and Docker
CMD ["run", "--enable-api", "--cors", "*", "--model", "models/latest.tar.gz", "--port", "5005"]
