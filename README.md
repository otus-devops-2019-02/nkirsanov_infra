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
