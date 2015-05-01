# rfc.pyblish.com/rfc
server {
  listen 80;
  server_name rfc.abstractfactory.io;
  rewrite ^ $scheme://rfc.pyblish.com/rfc$request_uri permanent;
}

# rfc.pyblish.com
server {
  listen 80;
  server_name rfc.pyblish.com;
  location / { 
    proxy_pass http://rfc:4000;
  }
}
