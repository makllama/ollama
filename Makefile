.DEFAULT_GOAL := push

build:
	 docker build -t ollama -f Dockerfile.musa -o type=docker .

push: build
	docker tag ollama:latest sh-harbor.mthreads.com/haive/ollama:latest
	docker push sh-harbor.mthreads.com/haive/ollama:latest