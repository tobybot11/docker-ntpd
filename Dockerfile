FROM alpine
RUN apk update
RUN apk add iptables && \
	apk add openntpd && rm -rf /var/cache/apk/*
COPY ntpd.conf /etc/ntpd.conf
ENTRYPOINT ["ntpd", "-d", "-f", "/etc/ntpd.conf", "-s"]

EXPOSE 123
