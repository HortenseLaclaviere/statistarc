.PHONY: up runserver stop migrate

up:
	docker compose up --build -d

runserver:
	docker compose up --build

stop:
	docker compose down

migrate:
	docker compose exec web python manage.py migrate
