FROM nginx
COPY ./nginx.template /etc/nginx/nginx.template
CMD /bin/bash -c "envsubst < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"
