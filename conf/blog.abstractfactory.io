server {
    listen 80;
    server_name blog.pyblish.com blog.abstractfactory.io stage.blog.abstractfactory.io;

    location / {
        proxy_pass http://blog:4000;
	}
}
