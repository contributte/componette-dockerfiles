FROM dockette/nginx

MAINTAINER Milan Sulc <sulcmil@gmail.com>

# Remove default site
RUN rm /etc/nginx/sites-enabled/default

# Nginx configuration
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./mime.types /etc/nginx/mime.types

# Upstreams
ADD ./upstreams.d /etc/nginx/upstreams.d

# Auths
ADD ./auth.d /etc/nginx/auth.d

# Extra configs
ADD ./parts.d /etc/nginx/parts.d

# Sites
ADD ./sites.d /etc/nginx/sites-enabled

# Entrypoint
ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
