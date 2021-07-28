FROM httpd:2.4.48-alpine

COPY ./apache2/config/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./apache2/htdocs /usr/local/apache2/htdocs

RUN chmod 755 /usr/local/apache2/htdocs
RUN apk add perl perl-cgi perl-dbi perl-dbd-mysql