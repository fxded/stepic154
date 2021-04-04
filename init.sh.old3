sudo rm -rf /etc/nginx/conf.d/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/conf.d/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-available/default
sudo /etc/init.d/nginx restart


# Проверяем питон в системе, если больше 3.4, то все оставляем как есть
# если нет, то обновляемся до python $VERSION_PYTHON
VERSION_PYTHON=3.5
echo "Текущая версия Python3: $(python3 --version)"
if [ $( python3 --version | sed "s/Python\s//g" | cut -d "." -f2 ) -gt 4  ] 
then
	    PYTHON_PATH=$(which python3)
    else
	       sudo apt update
	          sudo apt install python$VERSION_PYTHON
		     PYTHON_PATH=$(which python3.5)
		     fi
		     echo "Путь к python3: $PYTHON_PATH"


echo "Создаем переменную окружения"
virtualenv -p "$PYTHON_PATH" web_study 2> /dev/null
echo $VIRTUAL_ENV
source web_study/bin/activate

pip3 install --upgrade  django==2.1 

sudo gunicorn -b 0.0.0.0:8080 hello:resp_app
sudo gunicorn -b 0.0.0.0:8000 ask.wsgi

sudo /etc/init.d/mysql start
