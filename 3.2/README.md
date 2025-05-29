# Домашнее задание к занятию «Установка Kubernetes»

### Задание 1. Установить кластер k8s с 1 master node

1. Подготовка работы кластера из 5 нод: 1 мастер и 4 рабочие ноды.
Создаем в облаке 5 ВМ с помощью [terraform](vm):

  ![изображение](https://github.com/user-attachments/assets/9fdd30b1-65a8-48db-a36a-414d638ee9f4)

Устанавливааем с помощью Kubespray:
  -  Под виртуальным окружением python устанавливаем ansible:
  ```
  python3 -m venv .venv
  source .venv/bin/activate
  python3 -m pip install -r requirements.txt
  ```
  -  Прописываем в inventory внутринние адреса своих хостов и запускаем плейбук:
  ```
  ansible-playbook -i inventory/mycluster/inventory.ini cluster.yml -b -v
  ```

2. В качестве CRI — containerd.

  ![изображение](https://github.com/user-attachments/assets/d81fd605-9628-45fd-b5a5-8983b3ad9cef)

3. Запуск etcd производить на мастере.

  ![изображение](https://github.com/user-attachments/assets/afb638f2-a18b-4744-9bcb-d6f38dff8f5c)

4. Способ установки выбрать самостоятельно.
