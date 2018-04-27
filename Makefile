env:

start: env
	docker-compose up -d web

run:
	npm run dev

utest:
	npm run utest

test:
	npm test

e2e:
	npm run e2e

build:
	docker build -t go-money-frontend-image .

push:
	docker login
	docker tag go-money-frontend-image joaosoft/go-money-frontend-image
	docker push joaosoft/go-money-frontend-image

dockerhub: build push