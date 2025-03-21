Развертывание eca-service в Kubernetes
======================================

Описание
----------------------------------------
В данном разделе приведена инструкция для развертывания проекта eca-service в кластере Kubernetes.

Необходимый софт
----------------------------------------
* Docker
* Docker compose
* Helm

Настройка kubernetes для Windows 10
----------------------------------------

1. Сначала необходимо включить поддержку Kubernetes в Docker desktop (Settings->Kubernetes->Enable Kubernetes).  Подробнее см. https://phoenixnap.com/kb/kubernetes-on-windows.

2. Установить kubectl https://kubernetes.io/docs/tasks/tools/.

3. Установить Kubernetes dashboard с помощью команды:

   kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.0/aio/deploy/recommended.yaml

4. Открыть канал для доступа к Kubernetes через localhost с помощью команды:

   kubectl proxy

5. Kubernetes dashboard доступна по адресу http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

6. Сгенерировать access token для доступа к Kubernetes dashboard (https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md)

   kubectl apply -f auth/auth-config.yaml

   kubectl -n kubernetes-dashboard create token admin-user

7. Установить helm с помощью утилиты chocolatey (см. https://docs.chocolatey.org/en-us/choco/setup). В PowerShell.exe от имени
администратора выполнить следующие команды:

   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

   choco install Kubernetes-Helm


Запуск eca-service в Kubernetes
----------------------------------------

1. Установить необходимые вспомогательные docker образы с помощью скрипта:

   install-docker-images.bat (для Windows)
   
   sh install-docker-images.sh (для Linux)

2. Для запуска проекта необходимо выполнить скрипт:

   install.bat (для Windows)
   
   sh install.sh (для Linux)

3. Для удаления проекта необходимо выполнить скрипт:

   uninstall.bat (для Windows)
   
   sh uninstall.sh (для Linux)


Описание скриптов развертывания
----------------------------------------

* В файле helm/secrets.yaml можно задать секреты в формате base64

* install.sh / install.bat - развертывание всего стека для linux/windows

* install-infra.sh / install-infra.bat - развертывание основных инфраструктурных сервисов (postgres, rabbitmq, minio, redis) для linux/windows

* install-apps.sh / install-apps.bat - развертывание основных java микросервисов для linux/windows

* install-monitoring.sh / install-monitoring.bat - развертывание стека мониторинга (prometheus, grafana) для linux/windows

* install-logging.sh / install-logging.bat - развертывание стека логирования (elasticsearch, filebeat, kibana) для linux/windows