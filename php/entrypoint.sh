#!/bin/bash

# Change owner
chown root:root /etc/cron.d -R

# Start rsyslog
rsyslogd

# Start cron
cron

# Start PHP
php-fpm7.1 -F
