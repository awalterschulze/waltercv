docker-build:
	cp /System/Library/Fonts/HelveticaNeue.dfont .
	docker build -t latex-image .
	docker run --rm=true --name latex-container --user="$(id -u):$(id -g)" -i -t -v `pwd`:/data latex-image ./build.sh

build:
	./build.sh