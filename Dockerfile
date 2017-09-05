FROM debian:stable

MAINTAINER Chris Robertson https://github.com/electronicsleep

RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app

#For verbose commands
#RUN apt-get update && apt-get install sysstat net-tools lsof -y

#To build/run go program
#RUN apt-get update && apt-get install golang -y

ADD SystemCapture /usr/src/app
ADD system-capture-start.sh /usr/src/app

WORKDIR /usr/src/app
EXPOSE 5000

#To build/run go program
#CMD ["go", "run", "SystemCapture.go"]

#Multi process docker update start file
CMD ["bash", "system-capture-start.sh"]

#Run normally
#CMD ["./SystemCapture"]