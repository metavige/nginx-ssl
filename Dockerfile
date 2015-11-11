FROM metavige/alpine-nginx
MAINTAINER Ricky Chiang<metavige@gmail.com>


RUN apk -U add openssl nginx && \
	rm -Rf rm -rf /var/cache/apk/* && \
	rm -rf /etc/nginx/conf.d/*; \
	mkdir -p /etc/nginx/external

COPY . /

EXPOSE 443 80

CMD ["nginx", "-g", '"daemon off;"']
