# (C) 2015 Michael Howell
# This script is released under the terms of the Apache license.
# Get it at http://www.apache.org/licenses/LICENSE-2.0
FROM    delitescere/jdk
ENV     ANT_VERSION 1.9.6
ENV     ANT_HOME /apache-ant-$ANT_VERSION
ENV     PATH /apache-ant-$ANT_VERSION/bin:/bin:/usr/bin
ADD     http://www.carfab.com/apachesoftware//ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz /
RUN     tar -xvf /apache-ant-$ANT_VERSION-bin.tar.gz -C /
WORKDIR /src
ENTRYPOINT [ "ant" ]

