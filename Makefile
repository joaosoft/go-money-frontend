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
