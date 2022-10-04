#### Описание файлов для выполнения части развертывания облачной инфраструктуры при помощи  Terraform

___

+ [main.tf](main.tf) - файл описания облачной инфраструктуры.
+ [meta.yml](meta.yml) - файл, для описания подключения к созданным VM.
+ [inventory.yml.tpl](inventory.yml.tpl) - шаблон формирования `ansible` инвентори.
+ [convert_inventory_file.py](convert_inventory_file.py) - python скрипт, для преобразования выходного файла terraform в `ansible` инвентори.

[НАЗАД](../README.md)