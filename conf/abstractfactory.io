server {
    listen 80 default;
    server_name af.pyblish.com abstractfactory.io www.abstractfactory.io;

    location / {
        proxy_pass http://af:8000;
    }

	rewrite ^/(blog)(.*) http://blog.pyblish.com$2 permanent;
}
