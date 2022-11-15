bash:
	make up && docker-compose exec app sh
build:
	docker-compose build --no-cache
dev:
	docker-compose -f docker-compose.dev.yml up
down:
	docker-compose down
install:
	docker-compose exec app npm i
test:
	make up && docker-compose exec app npm run test
up:
	docker-compose up -d --force-recreate
up/log:
	docker-compose up
version:
	docker-compose exec app node -v
lint/fix:
	docker-compose exec app npm run lint-fix