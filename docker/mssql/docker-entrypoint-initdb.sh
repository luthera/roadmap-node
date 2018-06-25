#!/bin/bash

# wait for database to start...
for i in {30..0}; do
  if sqlcmd -U SA -P $SA_PASSWORD -Q 'use master; select name, physical_name from sys.database_files;' &> startup.out; then
    echo "$0: SQL Server started"
    if grep -q "Changed database context to" startup.out; then
      echo "$0: Initializing database"
      for f in `ls /docker-entrypoint-initdb.d/* | sort -V`; do
        case "$f" in
          *.sh)     echo "$0: running $f"; . "$f" ;;
          *.sql)    echo "$0: running $f"; sqlcmd -U SA -P ${SA_PASSWORD} -X -i  "$f"; echo ;;
          *)        echo "$0: ignoring $f" ;;
        esac
        echo
      done
      break
    elif grep -q "Database 'root' does not exist" startup.out; then
      break
    fi
  fi
  echo "$0: SQL Server startup in progress..."
  sleep 1
done

echo "$0: SQL Server Database ready"