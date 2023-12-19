FROM docker.io/library/alpine:latest

RUN \
  mkdir /providers &&\
  wget -O /providers/keycloak-restrict-client-auth.jar https://github.com/sventorben/keycloak-restrict-client-auth/releases/download/v23.0.0/keycloak-restrict-client-auth.jar

RUN \
  chmod -R ugo+r /providers

USER 1001:0
