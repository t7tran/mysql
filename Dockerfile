FROM mysql:5.7.43

COPY ./rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]