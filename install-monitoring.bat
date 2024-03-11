kubectl apply -f helm/secrets.yaml
helm upgrade --install postgres-exporter helm/postgres-exporter
helm upgrade --install prometheus helm/prometheus
helm upgrade --install alertmanager helm/alertmanager
helm upgrade --install grafana helm/grafana