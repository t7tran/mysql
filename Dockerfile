FROM mysql:5.7.44

COPY ./rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]