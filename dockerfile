# Use the official Rasa image 
FROM rasa/rasa:3.3.0

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default Rasa API port
EXPOSE 5005

# Specify the start command for Nixpacks and Docker
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--model", "models/archive.tar.gz"]
