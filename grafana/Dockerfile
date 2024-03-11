ARG GRAFANA_VERSION=6.6.2
FROM grafana/grafana:$GRAFANA_VERSION
COPY provisioning /etc/grafana/provisioning/
ENTRYPOINT ["/run.sh"]