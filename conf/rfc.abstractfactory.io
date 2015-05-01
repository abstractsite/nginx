server {
    listen 80;
    server_name rfc.abstractfactory.io;

    location / {
        proxy_pass http://rfc;
    }
}

upstream rfc {
    server rfc:4000;
}
