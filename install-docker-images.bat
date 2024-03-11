docker build -t minio-create-bucket-job minio/mc
docker build -t minio-proxy minio/nginx
docker build -t eca-service-grafana grafana