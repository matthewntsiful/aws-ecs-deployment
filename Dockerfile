FROM nginx:1.28.0-alpine

# Update packages and install security patches
RUN apk update && \
    apk upgrade --no-cache libxml2 && \
    apk add --no-cache libxml2-dev

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets to nginx directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 

########