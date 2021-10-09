FROM debian:stable-slim

ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.1/s6-overlay-amd64-installer /tmp/
RUN chmod +x /tmp/s6-overlay-amd64-installer && /tmp/s6-overlay-amd64-installer /; rm -rf /tmp/s6-overlay-amd64-installer



WORKDIR /home
COPY ./services.d /etc/services.d

ENTRYPOINT ["/init"]
