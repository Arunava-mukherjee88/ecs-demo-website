# Use lightweight Nginx base image
FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy your index.html and assets into nginx html directory
COPY index.html ./

# (Optional) Copy any other assets if you add CSS, JS, or images
# COPY assets/ ./assets/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

