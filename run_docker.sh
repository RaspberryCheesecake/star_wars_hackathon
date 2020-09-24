#!/bin/bash
# -*- ENCODING: UTF-8 -*-

docker build -t hhazi/tatooine:3.5 .
docker run -td --name tatooine -i -p 8000:8888 --rm -v $(pwd):/star_wars_hackathon hhazi/tatooine:3.5
