server {
    listen 80;
    server_name pipi.io www.pipi.io stage.pipi.io;

	rewrite ^ http://abstractfactory.io$request_uri? permanent;
}
