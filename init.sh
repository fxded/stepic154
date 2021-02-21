sudo rm -rf /etc/nginx/conf.d/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/conf.d/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-available/default
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 hello:resp_app
sudo /etc/init.d/mysql start
