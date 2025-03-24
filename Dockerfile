FROM nginx:latest

# Remove the default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default port)
EXPOSE 80
