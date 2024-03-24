# Use an official Go runtime as the base image
FROM golang:1.18

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install necessary packages
RUN go get -d -v github.com/gorilla/mux

# Expose port 8080 for the application
EXPOSE 8080

# Start the application when the container starts
CMD ["go", "run", "main.go"]