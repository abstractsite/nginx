server {
    listen 80;
    server_name rfc.pyblish.com;

    location / {
        proxy_pass http://rfc:4000;
    }
}
