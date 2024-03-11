Развертывание alertmanager в Kubernetes
======================================

Настройка
----------------------------------------

1. В файле config/alertmanager.yml указать настройки для отправки уведомлений:

  * email_configs.to - email адрес получателя уведомлений
  
  * email_configs.from - email адрес отправителя уведомлений
  
  * email_configs.smarthost - SMTP хост для отправки почты
  
  * email_configs.auth_username - пользователь для отправки почты
  
  * telegram_configs.api_url - url telegram
  
  * telegram_configs.chat_id - идентфикатор чата для получения уведомлений

2. В файле config/bot-token.txt указать пароль для telegram бота.

3. В файле config/email-auth-password.txt указать пароль пользователя для отправки почты.

Запуск в Kubernetes
----------------------------------------

Для запуска alertmanager в Kubernetes необходимо из текущей директории выполнить команду:

  helm upgrade --install alertmanager alertmanager
