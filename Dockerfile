FROM mminderbinder/baseimage
MAINTAINER Milo Minderbinder <minderbinder.enterprises@gmail.com>

ENV HOME /root

CMD ["/sbin/my_init"]


RUN apt-get update && apt-get -y install python

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
