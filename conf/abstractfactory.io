server {
    listen 80 default;
    server_name stage.abstractfactory.io;

    location / {
        proxy_pass http://af:8000;
    }

    rewrite ^/(blog)(.*) http://stage.blog.abstractfactory.io$2 permanent;
}
