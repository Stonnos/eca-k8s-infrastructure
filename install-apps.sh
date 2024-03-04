kubectl apply -f helm/secrets.yaml
kubectl apply -f helm/apps/common-configmap.yaml
helm upgrade --install -f helm/apps/discovery-server/values.yaml discovery-server helm/spring-boot-app
helm upgrade --install -f helm/apps/api-gateway/values.yaml api-gateway helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-audit-log/values.yaml eca-audit-log helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-data-loader/values.yaml eca-data-loader helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-data-storage/values.yaml eca-data-storage helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-ers/values.yaml eca-ers helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-mail/values.yaml eca-mail helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-oauth/values.yaml eca-oauth helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-server/values.yaml eca-server helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-web-push/values.yaml eca-web-push helm/spring-boot-app
helm upgrade --install -f helm/apps/eca-web/values.yaml eca-web helm/spring-boot-app