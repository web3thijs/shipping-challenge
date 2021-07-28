FROM httpd:2.4.48-alpine

WORKDIR /usr/local/apache2

COPY ./apache2/config/httpd.conf /conf/httpd.conf
COPY ./apache2/htdocs /htdocs

RUN chmod 755 /htdocs
RUN apk add perl perl-cgi perl-dbi perl-dbd-mysql