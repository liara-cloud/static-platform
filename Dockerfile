FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY vhost.conf /etc/nginx/conf.d/default.conf

CMD nginx -g 'daemon off;';

EXPOSE 80