upstream af {
    server af:80;
}

upstream rfc {
    server rfc:4000;
}

server {
    listen 80 default;
    server_name rfc.pyblish.com;

    location / {
        proxy_pass http://rfc;
    }
}

server {
    listen 80;
    server_name af.pyblish.com;

    location / {
        proxy_pass http://af;
    }
}
