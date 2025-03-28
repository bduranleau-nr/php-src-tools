FROM debian:bookworm

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y pkg-config \
  build-essential \
  autoconf \
  bison \
  re2c \
  libxml2-dev \
  libsqlite3-dev \
  vim

# configure and build PHP
# create an alias 'rebuild' for ease-of-use
# buildconf, configure and make are part of the PHP build process.
RUN echo 'alias rebuild="/usr/src/php-dev/buildconf && /usr/src/php-dev/configure --enable-debug && make -j4"' >> ~/.bashrc

WORKDIR /usr/src/php-dev/


