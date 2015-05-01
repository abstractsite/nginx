server {
    listen 80 default_server;
    server_name rfc.abstractfactory.io;

    location / {
        proxy_pass http://rfc/rfc$request_uri;
        proxy_set_header Host abstractfactory.io;
    }
}

upstream rfc {
    server rfc:4000;
}
