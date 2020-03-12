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
- Apache
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
