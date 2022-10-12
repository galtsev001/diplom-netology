#### Ссылки на ресурсы и файлы

---

##### Создание облачной инфраструктуры

1. Terraform сконфигурирован и создание инфраструктуры посредством Terraform возможно без дополнительных ручных действий.
2. Полученная конфигурация инфраструктуры является предварительной, поэтому в ходе дальнейшего выполнения задания возможны изменения.

**Ответ**

+ [Ссылка на файл main.tf](../infra/config/main.tf)
+ [Ссылка на скрипт автоматизации процесса](https://github.com/galtsev001/diplom-scripts)

---

##### Создание Kubernetes кластера

1. Работоспособный Kubernetes кластер.
2. В файле `~/.kube/config` находятся данные для доступа к кластеру.
3. Команда `kubectl get pods --all-namespaces` отрабатывает без ошибок.

**Ответ**

+ [Скрин ~/.kube/config](../kube/img/3.png)
+ [Скрин kubectl get pods --all-namespaces](../kube/img/2.png)

---

##### Создание тестового приложения

1. Git репозиторий с тестовым приложением и Dockerfile.
2. Регистр с собранным docker image. В качестве регистра может быть DockerHub или [Yandex Container Registry](https://cloud.yandex.ru/services/container-registry), созданный также с помощью terraform.

**Ответ**

+ [Git репозиторий](https://gitlab.com/galtsev001/diplom-test-app)
+ [Регистр docker image](https://gitlab.com/galtsev001/diplom-test-app/container_registry)

---

### Подготовка cистемы мониторинга и деплой приложения

1. Git репозиторий с конфигурационными файлами для настройки Kubernetes.
2. Http доступ к web интерфейсу grafana.
3. Дашборды в grafana отображающие состояние Kubernetes кластера.
4. Http доступ к тестовому приложению.

**Ответ**

+ [Git репозиторий](../kube/config/)
+ Http доступ 
    + Login: admin  
    + Password: Tico321@qaz
    + [Link Grafana](http://178.154.224.95:30000/)
+ [Скрин](../monitoring/img/3.png)
+ [Http доступ к тестовому приложению](http://178.154.224.95:30002)

---

### Установка и настройка CI/CD

1. Интерфейс ci/cd сервиса доступен по http.
2. При любом коммите в репозиторие с тестовым приложением происходит сборка и отправка в регистр Docker образа.
3. При создании тега (например, v1.0.0) происходит сборка и отправка с соответствующим label в регистр, а также деплой соответствующего Docker образа в кластер Kubernetes.

**Ответ**

+ [Ссылка на репозиторий в Gitlab c описанием процессов](https://gitlab.com/galtsev001/diplom-test-app)
