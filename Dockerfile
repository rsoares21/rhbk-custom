FROM registry.redhat.io/rhbk/keycloak-rhel9:22-15 as builder

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_DB=postgres
ENV AMBIENTE=HML

WORKDIR /opt/keycloak

#COPY ./providers/unimed-ciam-spi.jar /opt/keycloak/providers/
#COPY ./providers/unimed-theme.jar /opt/keycloak/providers/

RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
