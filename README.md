# nkirsanov_infra
nkirsanov Infra repository

для  подключения к someinternalhost в одну
команду с рабочего устройства запустить
ssh -i ~/.ssh/nkirsanov -o ProxyCommand="ssh -W %h:%p -i ~/.ssh/nkirsanov nkirsanov@35.246.232.178" nkirsanov@10.156.0.3

bastion - 35.246.232.178
someinternalhosе - 10.156.0.3

