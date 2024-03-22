ARG NGINX_VERSION=1.23.1-alpine
FROM nginx:$NGINX_VERSION
COPY nginx.conf.template /nginx.conf.template
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]