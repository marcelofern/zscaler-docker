FROM ubuntu:20.04

COPY . /app
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends -q \
  curl \
  dbus \
  jq \
  libdbus-glib-1-2 \
  libglib2.0-0 \
  libnss3-tools \
  libpcap-dev \
  libqt5core5a \
  libqt5dbus5 \
  libqt5gui5 \
  libqt5opengl5 \
  libqt5qml5 \
  libqt5quick5 \
  libqt5quickcontrols2-5 \
  libqt5quickparticles5 \
  libqt5quickwidgets5 \
  libqt5sql5-sqlite \
  libqt5sql5 \
  libqt5webchannel5 \
  libqt5webengine5 \
  libqt5webenginecore5 \
  libqt5webenginewidgets5 \
  libqt5webkit5 \
  libqt5webview5 \
  libqt5widgets5 \
  net-tools \
  semodule-utils \
  sudo \
  policycoreutils \
  dmidecode \
  systemctl \
  selinux-basics \
  selinux-policy-default \
  bash \
  vim

RUN /bin/bash
RUN /app/installer.run
