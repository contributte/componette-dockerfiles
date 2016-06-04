FROM dockette/nginx

MAINTAINER Milan Sulc <sulcmil@gmail.com>

# Nginx configuration
ADD ./nginx.conf /etc/nginx/nginx.conf

# Certificates
ADD ./ssl.d/fullchain.pem /etc/nginx/ssl/fullchain.pem
ADD ./ssl.d/privkey.pem /etc/nginx/ssl/privkey.pem

# Entrypoint
CMD ["nginx", "-g", "daemon off;"]
