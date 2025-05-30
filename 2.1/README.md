# Домашнее задание к занятию «Хранение в K8s. Часть 1»

### Задание 1 

**Что нужно сделать**

Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.

1. Создать [Deployment](deploy.yaml) приложения, состоящего из контейнеров busybox и multitool.
2. Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.

  ![изображение](https://github.com/user-attachments/assets/f1347ead-0a8f-4171-919c-d13ce2dae45f)

4. Обеспечить возможность чтения файла контейнером multitool.
5. Продемонстрировать, что multitool может читать файл, который периодоически обновляется.

  ![изображение](https://github.com/user-attachments/assets/3cb78d51-b44a-483e-940c-b1684e99de50)

5. Предоставить манифесты Deployment в решении, а также скриншоты или вывод команды из п. 4.

------

### Задание 2

**Что нужно сделать**

Создать DaemonSet приложения, которое может прочитать логи ноды.

1. Создать [DaemonSet](daemonset.yaml) приложения, состоящего из multitool.

  ![изображение](https://github.com/user-attachments/assets/c0be88f0-ea13-4b2e-ae7f-882093b88dc8)

2. Обеспечить возможность чтения файла `/var/log/syslog` кластера MicroK8S.

  ![изображение](https://github.com/user-attachments/assets/005a788c-3771-42c4-b888-7b5dbabf30a2)

3. Продемонстрировать возможность чтения файла изнутри пода.
4. Предоставить манифесты Deployment, а также скриншоты или вывод команды из п. 2.
