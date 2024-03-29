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

1. Сначала необходимо включить поддержку Kubernetes в Docker desktop (Settings->Kubernetes->Enable Kubernetes).
Подробнее см. https://phoenixnap.com/kb/kubernetes-on-windows.

2. Установить Kubernetes dashboard с помощью команды:

   kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.0/aio/deploy/recommended.yaml

3. Открыть канал для доступа к Kubernetes через localhost с помощью команды:

   kubectl proxy

4. Kubernetes dashboard доступна по адресу http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

5. Сгенерировать access token для доступа к Kubernetes dashboard (https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md)

   kubectl apply -f auth/auth-config.yaml

   kubectl -n kubernetes-dashboard create token admin-user

6. Установить helm с помощью утилиты chocolatey (см. https://docs.chocolatey.org/en-us/choco/setup). В PowerShell.exe от имени
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