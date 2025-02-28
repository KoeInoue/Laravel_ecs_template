# ------------------------------------------------------------
# For development
# ------------------------------------------------------------
up:
	docker compose up -d
up-build:
	docker compose up -d --build
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
nginx:
	docker container exec -it nginx_laravel_template ash
npm-i:
	docker container exec -it php_laravel_template npm install 
npm-dev:
	docker container exec -it php_laravel_template npm run dev
npm-build:
	docker container exec -it php_laravel_template npm run build
npm-build-watch:
	docker container exec -it php_laravel_template npm run build -- --watch 
npm-fix:
	docker container exec -it php_laravel_template npm run fix
composer-i:
	docker container exec -it php_laravel_template composer install
composer-fix:
	docker container exec -it php_laravel_template composer fixer
ide-helper:
	docker container exec -it php_laravel_template bash -c "php artisan ide-helper:models -N && php artisan ide-helper:generate"

# ------------------------------------------------------------
# Common 
# ------------------------------------------------------------
php:
	docker container exec -it php_laravel_template bash
