# Use the official Nginx image
FROM nginx:latest

# Copy website files into the default Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
