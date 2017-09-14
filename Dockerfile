FROM jboss/keycloak:3.3.0.CR1

ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=admin

COPY realm.json /opt/jboss/keycloak/

ENTRYPOINT [ "/opt/jboss/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0", "-Dkeycloak.import=/opt/jboss/keycloak/realm.json"]
