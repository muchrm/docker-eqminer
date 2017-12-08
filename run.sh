#!/bin/bash
docker container rm -f nheqminer
docker build -f Dockerfile -t muchrm/nheqminer:latest .
docker run --name miner -d -e THREADS=2 -e BTC_ADDR=${ADDR} muchrm/nheqminer:latest