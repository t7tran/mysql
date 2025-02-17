FROM mysql:8.4.4

COPY ./rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]