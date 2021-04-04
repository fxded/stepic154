sudo rm -rf /etc/nginx/conf.d/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/conf.d/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-available/default
sudo /etc/init.d/nginx restart

sudo apt-get update
sudo apt-get install -y python3.5
sudo apt-get install -y python3.5-dev
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn
sudo apt install sqlite3

sudo gunicorn -b 0.0.0.0:8080 hello:resp_app &&
cd ask
sudo gunicorn -b 0.0.0.0:8000 ask.wsgi

sudo /etc/init.d/mysql start
