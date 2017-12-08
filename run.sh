#!/bin/bash
docker container rm -f miner
docker build -f Dockerfile -t muchrm/nheqminer:latest .
docker run --name miner -d -e THREADS=2 -e BTC_ADDR=3L2zctUmVNbiE88sx1wPjMa2nvWGcmkwwj muchrm/nheqminer:latest