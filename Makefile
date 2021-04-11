MAIN_SERVICE = projector_nginx

run:
	docker-compose build --parallel --no-cache
	docker-compose up -d
	docker-compose ps

restart:
	docker-compose restart $(MAIN_SERVICE)
	docker-compose ps

rebuild:
	rm -rf ./nginx_cache/*
	docker-compose build --parallel
	docker-compose up -d
	docker-compose ps
