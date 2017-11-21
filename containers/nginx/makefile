export CONTAINER_NAME=react


refresh:
	./node_modules/.bin/webpack

build:
	docker build . -t ${COMPOSE_PROJECT_NAME}_${CONTAINER_NAME}:latest

tag:
	docker tag ${COMPOSE_PROJECT_NAME}_${CONTAINER_NAME}:latest ${ECR_REPO_URL}/${COMPOSE_PROJECT_NAME}_${CONTAINER_NAME}:${TAG}

clobber:
	docker rmi -f $$(docker images  --filter=reference='${ECR_REPO_URL}/${COMPOSE_PROJECT_NAME}_${CONTAINER_NAME}' -a -q) || true
	docker rmi -f $$(docker images  --filter=reference='${COMPOSE_PROJECT_NAME}_${CONTAINER_NAME}' -a -q) || true

deploy:
	# aws ecr create-repository --repository-name ${COMPOSE_PROJECT_NAME}_${CONTAINER_NAME} || true
	$(MAKE) clobber
	$(MAKE) build
	$(MAKE) tag
	$(MAKE) push


install:
	npm i

