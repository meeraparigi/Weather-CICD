# Use base image
FROM python:3.14.0a3-alpine3.21

# Set working directory
WORKDIR /app

# Copy current directory contents into container at /app folder
COPY . .

# Install required packagaes needed to run the app
RUN pip install -r requirements.txt

# Expose the port
EXPOSE 5000

# Run app.py application when the container launches
CMD ["python", "app.py"]