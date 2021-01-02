FROM nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN ln -sf /var/www/html/etc/nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www/html
EXPOSE 80
