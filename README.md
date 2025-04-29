## Задание 1. Установка MicroK8S

Установить MicroK8S на локальную машину или на удалённую виртуальную машину.
      
      '''
      goi@guryanov:~$ microk8s version
      MicroK8s v1.32.3 revision 8148
      '''

Установить dashboard.
    
   ![изображение](https://github.com/user-attachments/assets/79071db9-3940-4c95-b23d-22aad385c41f)
    
Сгенерировать сертификат для подключения к внешнему ip-адресу.
      
      '''
      goi@guryanov:~$ microk8s kubectl create token default
      '''

## Задание 2. Установка и настройка локального kubectl

Установить на локальную машину kubectl.

      '''
      goi@guryanov:~$ kubectl version
      Client Version: v1.32.4
      Kustomize Version: v5.5.0

      '''
Настроить локально подключение к кластеру.

   ![изображение](https://github.com/user-attachments/assets/b75d3afa-941c-497e-90a1-21362bb9d3bd)

Подключиться к дашборду с помощью port-forward.
