FROM java:8
MAINTAINER Tobias Raatiniemi <raatiniemi@gmail.com>

ENV GRADLE_VERSION 2.13
ENV GRADLE_HOME /opt/gradle-2.13

RUN set -x \
    && curl -L http://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /tmp/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip /tmp/gradle-${GRADLE_VERSION}-bin.zip -d /opt/ \
    && rm /tmp/gradle-${GRADLE_VERSION}-bin.zip

ENV PATH $PATH:${GRADLE_HOME}/bin
