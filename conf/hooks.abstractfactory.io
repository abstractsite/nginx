server {
    listen 80;
    server_name hooks.pyblish.com hooks.abstractfactory.io;

    location / {
        proxy_pass http://hooks:80;
    }
}
