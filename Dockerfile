FROM nginx
RUN mkdir -p /home/box/web
WORKDIR /home/box/web
RUN ln -sf /home/box/web/etc/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
