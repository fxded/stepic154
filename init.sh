sudo rm -rf /etc/nginx/conf.d/default.conf
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/conf.d/default.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
