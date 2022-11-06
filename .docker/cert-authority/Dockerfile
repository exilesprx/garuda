FROM debian:bullseye-20221024-slim AS build

RUN apt -y update \
  && apt -y install git

WORKDIR /usr/lib

RUN git clone https://github.com/michaelmcandrew/easy-rsa.git

WORKDIR /usr/lib/easy-rsa

RUN git checkout tags/v3.0.5


FROM build AS cert-auth

WORKDIR /usr/lib/easy-rsa/easyrsa3

ENTRYPOINT [ "/bin/bash" ]