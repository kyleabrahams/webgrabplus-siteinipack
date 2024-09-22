# Use a lightweight base image
FROM alpine:latest

# Install necessary dependencies
RUN apk add --no-cache \
    curl \
    bash \
    python3 \
    py3-pip

# Set the working directory
WORKDIR /webgrabplus-siteinipack

# Copy WebGrab+Plus files into the container
COPY WebGrab++.sh .

# Make the script executable
RUN chmod +x WebGrab++.sh

# Install any required Python packages if needed
# RUN pip install -r requirements.txt

# Run WebGrab+Plus
CMD ["bash", "WebGrab++.sh"]
