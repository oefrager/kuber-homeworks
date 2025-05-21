# Домашнее задание к занятию «Конфигурация приложений»

### Задание 1. Создать Deployment приложения и решить возникшую проблему с помощью ConfigMap. Добавить веб-страницу

1. Создать [Deployment](deploy.yaml) приложения, состоящего из контейнеров nginx и multitool.

  ![изображение](https://github.com/user-attachments/assets/0077f286-c1df-4755-90e8-9154fb669f8f)

2. Решить возникшую проблему с помощью [ConfigMap](configmap.yaml): `порт 80 занят, поэтому multitool не стартует, использовать альтернативный порт: HTTP_PORT: "8801"`.
3. Продемонстрировать, что pod стартовал и оба конейнера работают.

  ![изображение](https://github.com/user-attachments/assets/49be8573-8092-4074-8589-a862fd352905)

5. Сделать простую веб-страницу и подключить её к Nginx с помощью ConfigMap. Подключить Service и показать вывод curl или в браузере.

  ![изображение](https://github.com/user-attachments/assets/2f4b2773-9f0e-4b55-a341-55e89070ed87)

6. Предоставить манифесты, а также скриншоты или вывод необходимых команд.

------

### Задание 2. Создать приложение с вашей веб-страницей, доступной по HTTPS 

1. Создать [Deployment](deploy_nginx.yaml) приложения, состоящего из Nginx.

  ![изображение](https://github.com/user-attachments/assets/3df67f8a-3016-41d8-9d22-03ad992d9fa6)

2. Создать собственную веб-страницу и подключить её как [ConfigMap](configmap_nginx.yaml) к приложению.
3. Выпустить самоподписной сертификат SSL. Создать [Secret](configmap_nginx.yaml) для использования сертификата.
  ```
  создаем сертификат (cert.pem) и ключ (key.pem) командой:
      openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 10 -nodes -subj "/C=RU/ST=UR/L=Izhevsk/O=/OU=/CN=test-https.com"

  подключаем их в "куб" с именем secret-tls:
      kubectl create secret tls secret-tls --key key.pem --cert cert.pem

  просиотреть можно:
      kubectl get secret secret-tls -o yaml
  ```
  
  ![изображение](https://github.com/user-attachments/assets/36508336-4551-47ac-a57e-eaf29a5ad108)

4. Создать [Ingress](ingress_nginx.yaml) и необходимый Service, подключить к нему SSL в вид. Продемонстировать доступ к приложению по HTTPS. 

  ![изображение](https://github.com/user-attachments/assets/52ed7ce2-1324-4325-8927-e30fde19853f)

5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.
