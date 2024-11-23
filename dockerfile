# Use the official Rasa image
FROM rasa/rasa:3.3.0

# Copy all project files (including models and configuration) into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Expose the default Rasa API port
EXPOSE 5005

# Run the Rasa server, specifying the model
CMD ["run", "--enable-api", "--cors", "*", "--model", "models/archive.tar.gz"]

