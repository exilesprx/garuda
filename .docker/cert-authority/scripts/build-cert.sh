#!/bin/bash

./easyrsa gen-req garuda.lan nopass
./easyrsa sign-req client garuda.lan
cat pki/issued/garuda.lan.crt pki/private/garuda.lan.key >> fullchain.pem
mv fullchain.pem /usr/local/etc/haproxy/certificates/garuda.lan/fullchain.pem
chmod 444 /usr/local/etc/haproxy/certificates/garuda.lan/fullchain.pem