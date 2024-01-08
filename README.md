### Подготовка
Подключение к серверам выполняется по ssh, поэтому предполагается:
* наличие `*.pub` ключей на удаленных серверах
* наличие файла `~/.ssh/config` для сопоставления IP адресов именам серверов

#### Предусловия
Наличие Ansible на локальной машине. [Установка Ansible.](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

Предварительно необходимо установить роли и коллекции Ansible, используемые для конфигурирования. Для этого:
1. Перейти в директорию `ansible` проекта.
2. Выполнить:
   ```bash 
    ansible-galaxy install -r ./requirements.yml 
   ```
#### Конфигурирование серверов
1. Перейти в директорию `ansible` проекта.
2. Выполнить команду ```make setup```
При этом будет выполнено:
- установка ролей и коллекций Ansible (если выполнялось ранее, то пропустим без ошибок)
- установка Docker и docker-compose на удаленные сервера, добавление пользователей `docker_group_users` в группу `docker`  
- установка необходимых пакетов python на удаленные сервера
- добавление пользователя `ansible_ssh_user` в группу `sudo`

### Hexlet tests and linter status:
[![Actions Status](https://github.com/yura2201/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/yura2201/devops-for-programmers-project-76/actions)