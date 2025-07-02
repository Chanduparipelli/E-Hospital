# Use the official Nginx image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default static files
RUN rm -rf ./*

# Copy your static site content into the container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx will start automatically
