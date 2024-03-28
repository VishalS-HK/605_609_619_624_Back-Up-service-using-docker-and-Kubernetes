FROM ubuntu:latest 

# Install necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy the contents of the app folder to the container
COPY app/ /app

# Install Python dependencies
RUN pip3 install --no-cache-dir -r /app/requirements.txt

# Set entrypoint
CMD ["python3", "/app/quickstart.py"]

