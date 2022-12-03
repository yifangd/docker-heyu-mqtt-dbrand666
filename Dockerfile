ARG BUILD_FROM=alpine:latest
FROM ${BUILD_FROM}

# Install packages

RUN \
    apk add --no-cache --virtual .build-dependencies \
        tar \
		curl \
		build-base \
    \
    && apk add --no-cache \
	    python3 \
		py3-pip \
	\
	&& pip3 install paho-mqtt \
    \
    && mkdir -p /opt/build \
    && curl -L -s "https://github.com/HeyuX10Automation/heyu/archive/v2.11-rc3.tar.gz" \
        | tar zxvf - -C /opt/build \
    \
    && cd /opt/build/heyu-2.11-rc3/ \
	\
    && ./configure --sysconfdir=/etc CFLAGS="-fcommon"\
    \
	&& make -j$(nproc) \
    \
    && make install \
    \
    && mkdir -p /usr/local/var/lock \
    && mkdir -p /usr/local/var/tmp/heyu	\
	&& chmod 777 /usr/local/var/tmp/heyu \
	&& chmod 777 /usr/local/var/lock \
	\
    && apk del --purge .build-dependencies \
    && rm -fr /tmp/* \
	&& rm -rf /opt/build/* 
	
# Copy data
COPY x10mqtt.py /
COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /
CMD [ "/run.sh" ]
