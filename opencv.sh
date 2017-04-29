#!/bin/bash

xhost +local:docker

if [ $# -gt 0 ]; then
	docker run -it --rm --name opencv -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:$PWD -w $PWD yassinekhachlek/docker-opencv-python python $1
else
	docker run -it --rm --name opencv yassinekhachlek/docker-opencv-python
fi

xhost -local:docker
