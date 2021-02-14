docker run -d -it -p 8000:8080  guni:v1 gunicorn -b 0.0.0.0:8080 --log-file /var/log/err_guni_logs.log   --access-logfile /var/log/access_guni_logs.log myapp:app
