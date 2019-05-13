# nkirsanov_infra
nkirsanov Infra repository
Домашнее задание №3
для  подключения к someinternalhost в одну
команду с рабочего устройства запустить
ssh -i ~/.ssh/nkirsanov -o ProxyCommand="ssh -W %h:%p -i ~/.ssh/nkirsanov nkirsanov@35.246.232.178" nkirsanov@10.156.0.3
Подключение к someinternalhost через VPN
bastion_IP = 35.246.232.178
someinternalhost_IP = 10.156.0.3

Добавлен сертификатLet's Encrypt  к веб-адмике https://35.246.232.178.xip.io

Домашнее задание № 4

testapp_IP = 35.246.232.178
testapp_port = 9292

добавлен скрипт startup-script.sh  

Запуск gcloud

gcloud compute instances create reddit-app \
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=startup-script.sh

правило файрвола

gcloud compute firewall-rules create puma-server \
  --allow tcp:9292 \
  --priority=1000 \
  --network=default \
  --direction INGRESS


Домашнее задание № 6
(Terraform-1)
Установка terraform
Подготовил конфиги  по созданию и настройке экземпляра ВМ
Написан код для добавления ключей нескольки пользователей
После добавления через web интерфейс ssh ключа и выполнения terraform apply он удаляется.

Домашнее задание № 7
 (Terraform-2)
-Созданы 2 ВМ reddit-app и reddit-db с использование образов, ранее подготовленных packer.
-Разделил конфигурацию на модули.
-Настроены правила ssh для разных окружений prod и stage
-Созданы тестовые bucketы

Домашнее задание № 8
 (Andsible-1)
- Установил ansible. Изучение основ, проверка работы модулей и различных типов inventory файлов
- ansible-playbook clone.yml при первом запуске ничего не делал поскольку репозиторий уже существовал. Далее после запуска ansible app -m command -a 'rm -rf ~/reddit' каталог был удален и при повторном запуке playbook он был успешно клонирован   

