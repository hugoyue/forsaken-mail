FROM node:alpine
MAINTAINER gowah <admin@mao.sh>

RUN apk update  && \
	apk add --no-cache --update git && \
	git clone https://github.com/hugoyue/forsaken-mail.git /root/forsaken-mail && \
	cd /root/forsaken-mail && \
	apk del git && \
	rm -rf /tmp/* /var/cache/apk/* && \
	npm install
	
EXPOSE 25 3000
WORKDIR /root/forsaken-mail
CMD ["npm", "start"]
