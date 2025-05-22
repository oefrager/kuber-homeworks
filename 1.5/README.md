# Домашнее задание к занятию «Сетевое взаимодействие в K8S. Часть 2»

------

### Задание 1. Создать Deployment приложений backend и frontend

1. Создать [Deployment](deploy_front.yaml) приложения _frontend_ из образа nginx с количеством реплик 3 шт.
2. Создать [Deployment](deploy_back.yaml) приложения _backend_ из образа multitool. 

  ![изображение](https://github.com/user-attachments/assets/b2cd5f54-0a48-4034-b498-15d1143145d0)

3. Добавить [Service](deploy_svc.yaml), которые обеспечат доступ к обоим приложениям внутри кластера. 

  ![изображение](https://github.com/user-attachments/assets/33e372c0-051a-45c3-8f3b-f27b17142707)

4. Продемонстрировать, что приложения видят друг друга с помощью Service.

  ![изображение](https://github.com/user-attachments/assets/9eac0af3-7949-446d-8c46-d5b76be78bf0)
  
  ![изображение](https://github.com/user-attachments/assets/aca1e659-3bf5-4d09-9ecc-b610123e0100)

5. Предоставить манифесты Deployment и Service в решении, а также скриншоты или вывод команды п.4.

------

### Задание 2. Создать Ingress и обеспечить доступ к приложениям снаружи кластера

1. Включить Ingress-controller в MicroK8S.

  ![изображение](https://github.com/user-attachments/assets/6c3fda27-88d2-49cc-8c0f-da18108bd591)

2. Создать [Ingress](ingress.yaml), обеспечивающий доступ снаружи по IP-адресу кластера MicroK8S так, чтобы при запросе только по адресу открывался _frontend_ а при добавлении /api - _backend_.

  ![изображение](https://github.com/user-attachments/assets/831af283-d176-401e-b199-b046fd30420e)

4. Продемонстрировать доступ с помощью браузера или `curl` с локального компьютера.

  ![изображение](https://github.com/user-attachments/assets/fd84d5a3-ae7b-4f7c-9eda-84c56e6bb96b)

5. Предоставить манифесты и скриншоты или вывод команды п.2.
