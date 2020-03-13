# PHP DOCKER DEV ENVIRONMENT
#### Inside:

![build status badge](https://img.shields.io/badge/nginx-latest-green)
![build status badge](https://img.shields.io/badge/php--fpm-7.4-green)
![build status badge](https://img.shields.io/badge/mariadb-10.4+-green)
![build status badge](https://img.shields.io/badge/mysql-8+-green)
![build status badge](https://img.shields.io/badge/mongodb-4.2-green)
![build status badge](https://img.shields.io/badge/redis-5+-green)
![build status badge](https://img.shields.io/badge/adminer-tool-blue)
![build status badge](https://img.shields.io/badge/phpmyadmin-tool-blue)
![build status badge](https://img.shields.io/badge/Elastik-coming_soon-yellow)
![build status badge](https://img.shields.io/badge/RabbitMQ-coming_soon-yellow)
![build status badge](https://img.shields.io/badge/Kafka-coming_soon-yellow)
![build status badge](https://img.shields.io/badge/Apache-coming_soon-yellow)
![build status badge](https://img.shields.io/badge/monitoring-coming_soon-yellow)

### Steps
1. Copy `.env` file:
    ```bash
    cp .env_example .env
    ```

2. Build:
    ```bash
    make build
    ```

3. Start:
    ```bash
    make start
    ```

4. Stop:
    ```bash
    make stop
    ```
### Other `make` commands
- Restart:
    ```bash
    make restart
    ```

- Remove:
    ```bash
    make remove
    ```


### Etc..

#### Test mysql, mariadb:
```
bash docker exec -it dev-mariadb mysql -u dev -e 'show databases;' -p
```
```bash
docker exec -it dev-mysql mysql -u root -D mysql -e 'select user from user;' -p
```

#### Remove docker images:
```bash
docker images | awk '{print($3)}' | xargs docker rmi 2>&1 | awk '{print($21)}' | xargs docker rm
```


