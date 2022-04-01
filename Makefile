up:
	docker compose up -d
build:
	docker compose build --no-cache --force-rm
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
logs:
	docker compose logs
ps:
	docker compose ps
php:
	docker container exec -it php_laravel_template bash
nginx:
	docker container exec -it nginx_laravel_template ash
npm-dev:
	docker container exec -it php_laravel_template npm run dev
