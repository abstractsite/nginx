server {
    listen 80;
    server_name pipi.io www.pipi.io;

	rewrite http://abstractfactory.io permanent;
}