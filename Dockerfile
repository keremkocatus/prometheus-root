FROM prom/prometheus:latest

USER root

COPY prometheus.yml /etc/prometheus/prometheus.yml

RUN mkdir -p /prometheus && chown -R root:root /prometheus

VOLUME /prometheus

EXPOSE 9090