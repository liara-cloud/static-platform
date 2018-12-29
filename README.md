# Liara Static Platform
The docker image for static projects

This image uses Nginx to serve static content. If you create a `liara_nginx.conf` in your project's root, Liara will use it to configure your nginx instance.

## Default liara_nginx.conf
```
location / {
  index  index.html index.htm;
}
```

You can extend it to add your own config:
```
location / {
  # ...
}

location /api {
  # ...
}

location /images {
  # ...
}
```