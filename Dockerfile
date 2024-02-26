FROM mysql:8.3.0

COPY ./rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]