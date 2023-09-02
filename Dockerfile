FROM mysql:5.7.42

COPY ./rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]