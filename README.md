docker build --tag fenio/java-aws .
docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
docker push fenio/java-aws