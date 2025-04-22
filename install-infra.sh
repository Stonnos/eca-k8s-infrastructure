kubectl apply -f helm/secrets.yaml
helm upgrade --install postgres helm/postgres
helm upgrade --install redis helm/redis
helm upgrade --install rabbitmq helm/rabbitmq
helm upgrade --install minio helm/minio
helm upgrade --install minio-proxy helm/minio-proxy