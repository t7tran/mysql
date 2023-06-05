FROM mysql:5.7.42

RUN echo '\n\
        echo\n\
      else\n\
        mysql_note "Starting temporary server"\n\
        docker_temp_server_start "$@"\n\
        mysql_note "Temporary server started."\n\
        docker_process_init_files /docker-entrypoint-initdb.d/*\n\
        mysql_note "Stopping temporary server"\n\
        docker_temp_server_stop\n\
        mysql_note "Temporary server stopped"\n\
        echo\n\
        mysql_note "MySQL init process done. Ready for start up."\n\
    ' >> /tmp/else.txt && \
    sed -i '/MySQL init process done. Ready for start up./r /tmp/else.txt' /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]