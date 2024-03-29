# Note: This Dockerfile will build the go lang project and start the application at 8080 pott
# we will start from the latest golang base image
FROM golang:latest

# Add Maintainer Info
LABEL maintainer="Rakesh Kumar <rakesh.kumar121502@gmail.com>"

# Setting the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
