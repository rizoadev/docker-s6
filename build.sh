#!/bin/bash


img='quay.io/asnaguo/circleci-test'
docker login quay.io -u asnaguo -p kopet1234
docker build -t $img .
docker push $img
