# Pull base image.
FROM debian:wheezy

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx

# copy main nginx conf setup for Docker
ADD nginx.conf /etc/nginx/

# create directories for nginx's download and process cache
RUN mkdir -p /data/nginx/cache /data/nginx/proxy_temp

# copy ssl proxy configuration
ADD sites-enabled /etc/nginx/sites-enabled

# Define default command.
CMD ["nginx"]
