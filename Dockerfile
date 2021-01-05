FROM alpine
COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
ADD api.tgz /opt/mygo/
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/local/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]

WORKDIR /opt/mygo
EXPOSE 1081