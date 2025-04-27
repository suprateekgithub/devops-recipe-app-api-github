FROM nginxinc/nginx-unprivileged:1-alpine
LABEL maintainer="londonappdeveloper.com"

COPY ./default.conf.tpl /etc/nginx/default.conf.tpl
COPY ./uwsgi_params /etc/nginx/uwsgi_params
COPY ./run.sh /etc/nginx/run.sh

ENV LISTEN_PORT=8000
ENV APP_HOST=app
ENV APP_PORT=9000

USER root

RUN mkdir -p /vol/static && \
    mkdir -p /vol/media && \
    mkdir -p /run && \
    chmod 755 /vol && \
    chmod 777 /run && \
    chown -R nginx:nginx /vol && \
    touch /etc/nginx/conf.d/default.conf && \
    chown nginx:nginx /etc/nginx/conf.d/default.conf && \
    chown nginx:nginx /etc && \
    chmod 777 /etc/nginx/run.sh

VOLUME /vol/static
VOLUME /vol/media

USER nginx

CMD ["/etc/nginx/run.sh"]
