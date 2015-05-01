server {
    listen 80 default_server;
    server_name rfc.abstractfactory.io;

    location / {
        proxy_pass http://rfc:4000;
    }

    # proxy_pass http://rfc;
    # rewrite ^ $scheme://pyblish.com/abc$request_uri permanent;
}

#upstream rfc {
#    server rfc:4000;
#}
