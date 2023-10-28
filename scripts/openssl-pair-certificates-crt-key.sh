#!/bin/bash

openssl req -x509 -newkey rsa:4096 -keyout server.key -out server.crt -days 365

# Complete
echo '[req]
default_bits = 2048
prompt = no
default_md = sha256
x509_extensions = v3_req
distinguished_name = dn

[dn]
C = US
ST = KS
L = Olathe
O = IT
OU = IT Department
emailAddress = webmaster@example.com
CN = localhost

[v3_req]
subjectAltName = @alt_names

[alt_names]
DNS.1 = *.localhost
DNS.2 = localhost
' > openssl-custom.cnf

openssl req \
    -x509 \
    -newkey rsa:2048 \
    -keyout server.key \
    -out server.crt \
    -days 365 \
    -config ./openssl-custom.cnf \
    -nodes \
    -new \
    -sha256 

