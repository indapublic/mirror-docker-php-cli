build:
	docker build --build-arg PHP_VERSION=$(PHP_VERSION) . -t indapublic/php-cli:$(PHP_VERSION)

publish:
	docker push indapublic/php-cli:$(PHP_VERSION)
