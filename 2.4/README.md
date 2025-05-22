# Домашнее задание к занятию «Управление доступом»

### Задание 1. Создайте конфигурацию для подключения пользователя

1. Создайте и подпишите SSL-сертификат для подключения к кластеру.
  ```
генерируем RSA ключ:
    openssl genrsa -out testssl.key 2048
создаем запрос на сертификат:
    openssl req -new -key testssl.key -out testssl.csr -subj "/CN=usertest"
генерируем  сертификат:
    openssl x509 -req -in testssl.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out usertest.crt -days 300
  ```
2. Настройте конфигурационный файл kubectl для подключения.
  ```
создаем пользователя с именем usertest:
    kubectl config set-credentials usertest --client-certificate=usertest.crt --client-key=testssl.key --embed-certs=true
  ```
  
  ![изображение](https://github.com/user-attachments/assets/9bcba70a-99fa-4c8c-aa99-5bedfa4896cd)

  ```
создаем контекст:
    kubectl config set-context usertest-context --cluster=microk8s-cluster --user=usertest
    kubectl config use-context usertest-context
  ```

  ![изображение](https://github.com/user-attachments/assets/dee00477-2cef-4db6-ac9c-fd23f96132b1)
  
  ```
вклюяаем RBAC для контроля доступа
  ```

  ![изображение](https://github.com/user-attachments/assets/7318a22f-d1ab-413b-8d88-e4090bbc0226)


3. Создаем [роли](role.yaml) и [привязываем](role-binding.yaml) к пользователю.


  ![изображение](https://github.com/user-attachments/assets/1fab32ea-5d21-45eb-aba9-1598615df694)

4. Предусмотрите права пользователя. Пользователь может просматривать логи подов и их конфигурацию (`kubectl logs pod <pod_id>`, `kubectl describe pod <pod_id>`).
  ```
Переключаемся в контекст пользователя:
    kubectl config use-context usertest-context
  ```

  ![изображение](https://github.com/user-attachments/assets/28128078-9191-4051-88aa-81ff94997880)

  ![изображение](https://github.com/user-attachments/assets/ecf1d9bf-818f-4e75-997d-93ac56cfe50a)


5. Предоставьте манифесты и скриншоты и/или вывод необходимых команд.
