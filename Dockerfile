FROM jboss/keycloak:3.3.0.CR1

ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=admin

COPY import /opt/jboss/keycloak/import

ENTRYPOINT [ "/opt/jboss/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0", "-Dkeycloak.migration.action=import", "-Dkeycloak.migration.provider=dir", "-Dkeycloak.migration.dir=/opt/jboss/keycloak/import", "-Dkeycloak.migration.strategy=OVERWRITE_EXISTING"]
