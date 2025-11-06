ARG GRAFANA_VERSION=12.2.0
FROM grafana/grafana:$GRAFANA_VERSION
COPY provisioning /etc/grafana/provisioning/
ENTRYPOINT ["/run.sh"]