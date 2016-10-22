FROM alpine
MAINTAINER Blagovest Petrov

RUN apk --no-cache add dnsmasq

COPY ./dnsmasq.conf /etc/dnsmasq.conf
COPY ./myhosts /etc/myhosts

EXPOSE 53

CMD ["/usr/sbin/dnsmasq","-d"]
