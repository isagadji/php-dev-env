PROJECT_PATH=$(shell pwd)
PROJECT_CONFIG=$(PROJECT_PATH)/docker-compose.yml
WEB_PROJECT_PATH='lol'
DOCKER_COMPOSE=`which docker-compose`
DOCKER=`which docker`

.PHONY: help status start stop restart reset build add_hosts remove

help: ## Help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
.DEFAULT_GOAL := help

status: ## Show docker status
	@echo "Status docker"
	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) ps

start: ## Start docker
	@echo "Start docker"
	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) up -d
#	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) up -d --remove-orphans

stop: ## Stop docker
	@echo "Stop docker"
	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) stop

restart: ## Restart docker
	@echo "Restart docker"
	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) restart

reset: stop start ## Reset docker. Stop and start

build: ## Build docker
	@echo "Build docker"
	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) build --parallel

add_hosts: ## Add local domains to file /etc/hosts
	echo "127.0.0.1   lol.local" >> /etc/hosts
	echo "127.0.0.1   lol.dev" >> /etc/hosts

remove: ## Stop and remove all containers and images
	@echo "Execute remove all containers..."
	$(DOCKER_COMPOSE) -f $(PROJECT_CONFIG) rm -s -f -v
