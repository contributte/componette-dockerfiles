FROM dockette/nginx

MAINTAINER Milan Sulc <sulcmil@gmail.com>

# Nginx configuration
ADD ./nginx.conf /etc/nginx/nginx.conf

# Upstreams
ADD ./upstreams.d /etc/nginx/upstreams.d

# Auths
ADD ./auth.d /etc/nginx/auth.d

# Extra configs
ADD ./parts.d /etc/nginx/parts.d

# Sites
ADD ./sites.d /etc/nginx/sites.d

# Entrypoint
ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
