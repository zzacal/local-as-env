#! /bin/bash
docker-compose down && \
docker-compose up -d && \
./sample-mock.sh