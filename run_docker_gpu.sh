#!/bin/bash
# -*- ENCODING: UTF-8 -*-

docker build -t hhazi/tatooine:3.5 .
docker run -t -i -p 8000:8888 --gpus all --rm -v $(pwd):/star_wars_hackathon hhazi/tatooine:3.5
