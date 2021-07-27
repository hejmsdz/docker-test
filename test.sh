#!/bin/bash

docker pull node:16

cd project1
docker build -t project1 .
# Output (fragment):
# => [1/5] FROM docker.io/library/node:16@sha256:...
# => [2/5] COPY package.json .
# => [3/5] COPY package-lock.json .
# => [4/5] RUN npm install
# => [5/5] COPY app app

docker run -t project1

cd ../project2
docker build -t project2 .
# Output (fragment):
# => [1/5] FROM docker.io/library/node:16@sha256:...
# => CACHED [2/5] COPY package.json .
# => CACHED [3/5] COPY package-lock.json .
# => CACHED [4/5] RUN npm install
# => [5/5] COPY app app

docker run -t project2

# Conclusion:
# Docker can reuse a build layer between different projects,
# located in different directories, if they share some configuration
