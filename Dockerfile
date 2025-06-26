# Use the official Python 3.11 slim image as the base image
FROM python:3.11-slim

# Install mkdocs, a static site generator
RUN pip install mkdocs

# Set the working directory inside the container
WORKDIR /app

# Copy the shell script into the container
COPY mkdockerize.sh .

# Make the shell script executable
RUN chmod +x mkdockerize.sh

# Set the shell script as the entry point for the container
ENTRYPOINT ["./mkdockerize.sh"]