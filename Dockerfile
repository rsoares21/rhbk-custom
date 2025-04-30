#FROM docker.io/rsoares21/rhbk-custom:2.1.6

FROM quay.io/keycloak/keycloak-operator:24.0.11

# Crie a pasta caso não exista e copie seu .jar para dentro do container
COPY ./providers/unimed-ciam-spi.jar /opt/keycloak/providers/unimed-ciam-spi.jar

#CMD ["start-dev"]
