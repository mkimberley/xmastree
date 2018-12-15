ARG distro=stretch
FROM resin/rpi-raspbian:$distro

COPY 	app/ /app

RUN		chmod +x /app/xmastree.py; \
		chmod +x /app/docker-entrypoint.sh;

WORKDIR /app

RUN 	sudo apt-get update;	\
		sudo apt-get upgrade;	\
		sudo apt-get install python-gpiozero python3-gpiozero;

ENTRYPOINT  "/app/docker-entrypoint.sh"
