# Use a lightweight Python image
FROM python:3.9-alpine

# Set working directory
WORKDIR /app

# Copy only necessary files
COPY helloworld.py .

# Install only required dependencies
RUN pip install --no-cache-dir flask

# Expose port 8080 for the web server
EXPOSE 8081

# Run the server
CMD ["python", "helloworld.py"]