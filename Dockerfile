# mminderbinder/python
# Docker image with Python 2.7, pip, and lxml
FROM mminderbinder/baseimage
MAINTAINER Milo Minderbinder <minderbinder.enterprises@gmail.com>


RUN apt-get update && apt-get -y install \
	python \
	python-dev \
	libxml2-dev \
	libxslt-dev \
	lib32z1-dev
WORKDIR /root
RUN curl https://bootstrap.pypa.io/get-pip.py > get-pip.py && \
	python get-pip.py
RUN pip install lxml

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/sbin/my_init"]
