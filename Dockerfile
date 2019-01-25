FROM postgres:10.6-alpine
MAINTAINER Sander Dahlberg <sander.dahlberg.work@gmail.com>
COPY postgres-init/init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
RUN chmod +x /docker-entrypoint-initdb.d/init-user-db.sh
RUN dos2unix /docker-entrypoint-initdb.d/init-user-db.sh
