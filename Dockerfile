FROM docker.io/library/alpine:latest

ARG RELEASE=v23.0.0 # datasource=github-releases depName=sventorben/keycloak-restrict-client-auth

RUN \
  mkdir /auth-providers &&\
  wget -O /auth-providers/keycloak-restrict-client-auth.jar https://github.com/sventorben/keycloak-restrict-client-auth/releases/download/${RELEASE}/keycloak-restrict-client-auth.jar

RUN \
  chmod -R ugo+r /auth-providers

USER 1001:0
