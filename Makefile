build:
	docker build . -t indapublic:php-cli

push:
	docker push indapublic/php-cli:latest
