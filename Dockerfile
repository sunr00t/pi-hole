FROM pihole/pihole:latest

ENV TZ=${TZ}
ENV WEBPASSWORD=${WEBPASSWORD}

EXPOSE 53 53/udp
EXPOSE 80

HEALTHCHECK CMD dig +short +norecurse +retry=0 @127.0.0.1 pi.hole || exit 1

SHELL ["/bin/bash", "-c"]
