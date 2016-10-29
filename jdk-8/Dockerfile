FROM java:8
MAINTAINER Tobias Raatiniemi <raatiniemi@gmail.com>

ENV GRADLE_VERSION 2.14.1
ENV GRADLE_HOME /opt/gradle-${GRADLE_VERSION}
ENV GRADLE_USER_HOME /cache
ENV BUILD_HOME /build

RUN set -x \
    && curl -L http://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /tmp/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip /tmp/gradle-${GRADLE_VERSION}-bin.zip -d /opt/ \
    && rm /tmp/gradle-${GRADLE_VERSION}-bin.zip

WORKDIR $BUILD_HOME
VOLUME $GRADLE_USER_HOME

ENV PATH $PATH:${GRADLE_HOME}/bin
