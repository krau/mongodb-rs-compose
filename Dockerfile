FROM mongo

COPY keyfile /etc/mongo-keyfile/keyfile

RUN chown mongodb:mongodb /etc/mongo-keyfile/keyfile && chmod 400 /etc/mongo-keyfile/keyfile

COPY custom-entrypoint.sh /custom-entrypoint.sh

RUN chmod +x /custom-entrypoint.sh

ENTRYPOINT ["/custom-entrypoint.sh"]

CMD ["--replSet", "rs0", "--bind_ip_all", "--port", "27017", "--keyFile", "/etc/mongo-keyfile/keyfile"]