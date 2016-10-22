FROM alpine
MAINTAINER Blagovest Petrov

RUN apk --no-cache add dnsmasq

COPY ./dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53

CMD ["/usr/sbin/dnsmasq","-d"]
