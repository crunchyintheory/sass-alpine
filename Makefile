build: 
	docker buildx build --platform linux/arm64/v8,linux/amd64 -t crunchyintheory/sass-watcher .

push:
	docker buildx build --push --platform linux/arm64/v8,linux/amd64 -t crunchyintheory/sass-watcher .
