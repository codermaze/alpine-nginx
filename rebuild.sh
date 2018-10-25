#!/bin/bash

docker build -t codermaze/alpine-nginx:latest .
docker push codermaze/alpine-nginx:latest
