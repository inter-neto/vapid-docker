DOCKER_NAME=interneto/vapid
SITE_DIR=/home/app/site

build:
	docker build -t ${DOCKER_NAME} .
run:
	docker run -p 3000:3000 -v ${PWD}/site:${SITE_DIR} -it  ${DOCKER_NAME} 
clean:
	rm -rf site && mkdir site/ && touch site/.keep
