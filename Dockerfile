FROM liquibase/liquibase:latest

WORKDIR /liquibase

COPY changelog.yaml /liquibase/changelog.yaml

ENTRYPOINT ["sh", "-c", "liquibase --url=${JDBC_URL} --username=${DB_USERNAME} --password=${DB_PASSWORD} --changeLogFile=changelog.yaml --logLevel=INFO update"]
