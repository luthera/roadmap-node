# docker build -t roadmap-node/mssql:1.0 .
# docker push roadmap-node/mssql:1.0
FROM        microsoft/mssql-server-linux:2017-GA
ENV         ACCEPT_EULA=Y
ENV         SA_PASSWORD=Supp0rt01

RUN         mkdir /docker-entrypoint-initdb.d
COPY        init-db.sql /docker-entrypoint-initdb.d/

RUN         ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/bin/sqlcmd \
            && ln -s /opt/mssql-tools/bin/bcp /usr/local/bin/bcp

COPY        docker-entrypoint.sh /usr/local/bin/
COPY        docker-entrypoint-initdb.sh /usr/local/bin/
RUN         chmod 777 /usr/local/bin/docker-entrypoint.sh
RUN         chmod 777 /usr/local/bin/docker-entrypoint-initdb.sh

ENTRYPOINT  ["docker-entrypoint.sh"]