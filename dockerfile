# Use the official Rasa image 
FROM rasa/rasa:3.3.0

# Set the working directory inside the container
WORKDIR /app

# Copy the project files, including the requirements.txt, into the container
COPY . /app

# Install the Python dependencies from requirements.txt (make sure requirements.txt is present)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default Rasa API port
EXPOSE 5005

# Run the Rasa server, specifying the model
CMD ["run", "--enable-api", "--cors", "*", "--model", "models/archive.tar.gz"]
