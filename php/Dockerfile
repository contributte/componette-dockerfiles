FROM dockette/php:7-fpm

MAINTAINER Milan Sulc <sulcmil@gmail.com>

RUN apt-get update && apt-get install -y rsyslog cron ssmtp && \
    echo "cron.* /var/log/cron.log" >> /etc/rsyslog.conf && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# PHP
ADD ./php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

# Cron
ADD ./cron.d/hourly /etc/cron.d/componette-hourly
ADD ./cron.d/daily /etc/cron.d/componette-daily
ADD ./cron.d/weekly /etc/cron.d/componette-weekly

# Ssmtp
ADD ./ssmtp/revaliases /etc/ssmtp/revaliases
ADD ./ssmtp/ssmtp.conf /etc/ssmtp/ssmtp.conf

# Entrypoint
ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
