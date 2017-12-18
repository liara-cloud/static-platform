FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY vhost.conf /etc/nginx/conf.d/default.conf

ONBUILD COPY . /app

CMD nginx -g 'daemon off;';

EXPOSE 80