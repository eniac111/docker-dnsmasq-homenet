FROM alpine
MAINTAINER Blagovest Petrov

RUN apk --no-cache add dnsmasq \
    && echo "addn-hosts=/etc/myhosts" >> /etc/dnsmasq.conf \
    && echo "user=root" >> /etc/dnsmasq.conf

EXPOSE 53

CMD ["/usr/sbin/dnsmasq","-d"]
