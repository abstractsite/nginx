server {
    listen 80 default;
    server_name abstractfactory.io www.abstractfactory.io stage.abstractfactory.io;

    location / {
	    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	    proxy_set_header Host $http_host;
	    proxy_redirect off;
	    proxy_pass http://af:80;
    }

    client_max_body_size 1M;
	keepalive_timeout 10;

    rewrite ^/(blog)(.*) http://blog.abstractfactory.io$2 permanent;
}
