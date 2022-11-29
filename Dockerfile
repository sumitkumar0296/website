FROM nginx:1.9.9

RUN apt-get update
RUN apt-get install nginx -y

ADD . /var/www/html
RUN rm /var/www/html/nginx.conf
COPY nginx.conf /var/www/html

RUN rm /var/www/html/conf.d/default.conf
COPY nginx-site.conf /var/www/html/conf.d/
