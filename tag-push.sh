#!/usr/bin/env bash

if [[ "${TRAVIS_BRANCH}" == "master" ]]; then
  docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
  docker push fenio/java-aws
fi
