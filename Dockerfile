FROM httpd:2.4

EXPOSE 443 80

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./server.key /usr/local/apache2/conf/
COPY ./server.crt /usr/local/apache2/conf/
COPY ./ca-bundle.crt /usr/local/apache2/conf/ssl.crt/