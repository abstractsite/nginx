server {
    listen 80;
    server_name be.abstractfactory.io;

    location / {
        proxy_pass http://be.abstractfactory.io:80;
    }
}
