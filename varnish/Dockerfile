FROM dockette/varnish

MAINTAINER Milan Sulc <sulcmil@gmail.com>

# Varnish variables
ENV VARNISH_CONFIG /etc/varnish/default.vcl

# Varnish configuration
ADD ./componette.vcl $VARNISH_CONFIG
