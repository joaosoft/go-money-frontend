env:

start: env
	docker-compose up -d web

run:
	npm run dev

build:
	npm run build

utest:
	npm run utest

test:
	npm test

e2e:
	npm run e2e

deploy:
	docker build -t app .
	-docker swarm leave --force
	-docker swarm init
	docker stack deploy --compose-file=docker-compose.yml production