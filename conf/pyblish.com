server {
    listen 80;
    server_name pyblish.com www.pyblish.com;

    location / {
        proxy_pass http://pyblish.com:80;
    }
}
