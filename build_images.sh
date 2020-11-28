#!/bin/sh

(
  cd nginx || exit
  docker build -t choas/express-redis-nginx:nginx .
  cd ..
)

docker build -t choas/express-redis-nginx:express .
