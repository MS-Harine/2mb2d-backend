#!/bin/bash

./gradlew clean
./gradlew build
docker build -t 2mb2d .
# docker compose up -d