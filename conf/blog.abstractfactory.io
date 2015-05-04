server {
    listen 80;
    server_name blog.pyblish.com;

    location / {
        proxy_pass http://blog:4000;
	}
}
