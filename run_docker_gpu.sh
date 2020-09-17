#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# We can't use docker-compose for running this with GPU resources (--gpus all)
# This is because of the limitations from https://github.com/docker/compose/issues/6691
docker build -t hhazi/tatooine:3.5 .
docker run -td --name tatooine -i -p 8000:8888 --gpus all --rm -v $(pwd):/star_wars_hackathon hhazi/tatooine:3.5
