FROM ttbb/base

ENV CHRONOGRAF_HOME /opt/sh/chronograf

ARG TARGETARCH

RUN wget https://dl.influxdata.com/chronograf/releases/chronograf-1.9.4_linux_$TARGETARCH.tar.gz  && \
mkdir -p /opt/sh/chronograf && \
tar -xf chronograf-1.9.4_linux_$TARGETARCH.tar.gz -C /opt/sh/chronograf --strip-components 2 && \
rm -rf chronograf-1.9.4_linux_$TARGETARCH.tar.gz && \
ln -s /opt/sh/chronograf/usr/bin/chronoctl /usr/bin/chronoctl && \
ln -s /opt/sh/chronograf/usr/bin/chronograf /usr/bin/chronograf

WORKDIR /opt/sh/chronograf
