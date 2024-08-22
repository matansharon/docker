# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies in the virtual environment
RUN pip install -r req.txt

# Expose the port that Streamlit uses
EXPOSE 8080

# Run the Streamlit app
CMD [ "streamlit", "run" ,"app.py" ,"--server.port 8080" ,"--server.enableCORS" ,"false"]

