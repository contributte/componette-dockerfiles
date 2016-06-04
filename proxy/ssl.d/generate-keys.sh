#!/bin/bash

# Generate self-signed key + cert
openssl req -new -x509 -nodes -days 36500 -keyout privkey.pem -out fullchain.pem -config ./openssl.conf

# Haproxy certificate
cat fullchain.pem privkey.pem > cert.pem
