FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY default_liara_nginx.conf /etc/nginx/conf.d/liara_nginx.conf

ONBUILD COPY . /usr/share/nginx/html

ONBUILD RUN if [ -e /usr/share/nginx/html/liara_nginx.conf ]; \
  then \
    echo 'Applying custom liara_nginx.conf...'; \
    mv /usr/share/nginx/html/liara_nginx.conf /etc/nginx/conf.d/liara_nginx.conf; \
  else \
    echo 'Applying default liara_nginx.conf...'; \
fi