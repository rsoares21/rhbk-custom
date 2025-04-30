#FROM docker.io/rsoares21/rhbk-custom:2.1.6

FROM quay.io/keycloak/keycloak-operator:24.0.5

COPY ./providers/unimed-ciam-spi.jar /opt/keycloak/providers/unimed-ciam-spi.jar

#CMD ["start-dev"]
