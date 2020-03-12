# DEV ENVIRONMENT (docker)
Services:
- nginx:latest
- php-fpm:7.4
- mariadb:10.4+
- mysql:8+
- mongodb:4.2
- redis:5+

Tools:
- adminer:latest

TODO:
- Elastik
- RabbitMQ
- Kafka
- Apache ???
- (monitoring)

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


### etc

Test mysql, mariadb:
```
bash docker exec -it dev-mariadb mysql -u dev -e 'show databases;' -p
```
```bash
docker exec -it dev-mysql mysql -u root -D mysql -e 'select user from user;' -p
```

Remove docker images:
```bash
docker images | awk '{print($3)}' | xargs docker rmi 2>&1 | awk '{print($21)}' | xargs docker rm
```


