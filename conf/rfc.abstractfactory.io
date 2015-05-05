server {
    listen 80;
    server_name rfc.pyblish.com rfc.abstractfactory.io;

    location / {
        proxy_pass http://rfc:4000;
    }
}
