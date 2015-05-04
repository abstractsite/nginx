server {
    listen 80 default;
    server_name rfc.pyblish.com;

    location / {
        proxy_pass http://af:8000;
    }
}
