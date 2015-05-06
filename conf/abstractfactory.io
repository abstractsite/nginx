server {
    listen 80 default;
    server_name abstractfactory.io www.abstractfactory.io;

    location / {
        proxy_pass http://af:8000;
    }

    rewrite ^/(blog)(.*) http://blog.abstractfactory.io$2 permanent;
}
