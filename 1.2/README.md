# Домашнее задание к занятию «Базовые объекты K8S»


### Задание 1. Создать Pod с именем hello-world

1. Создать манифест (yaml-конфигурацию) [Pod](pod-helloworld.yaml).
2. Использовать image - gcr.io/kubernetes-e2e-test-images/echoserver:2.2.
3. Подключиться локально к Pod с помощью `kubectl port-forward pod/hello-world 3000:8080` и вывести значение (curl или в браузере).

     ![изображение](https://github.com/user-attachments/assets/63d0edb8-8a9d-4910-b807-77641f91f2e6)


------

### Задание 2. Создать Service и подключить его к Pod

1. Создать [Pod](pod-service.yaml) с именем netology-web.
2. Использовать image — gcr.io/kubernetes-e2e-test-images/echoserver:2.2.
3. Создать Service с именем netology-svc и подключить к netology-web.

    ![изображение](https://github.com/user-attachments/assets/e2b1c1a8-6c8c-4ac5-82eb-85d27a811344)

4. Подключиться локально к Service с помощью `kubectl port-forward service/netology-svc 3001:80` и вывести значение (curl или в браузере).

    ![изображение](https://github.com/user-attachments/assets/e96dcf11-488a-4840-8d16-acca369c5cce)
