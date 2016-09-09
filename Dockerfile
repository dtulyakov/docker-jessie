FROM debian:jessie

RUN apt-get update \
    && apt-get install --reinstall -y perl debconf \
    && apt-get install -y --no-install-recommends \
      autoconf \
      automake \
      apt-utils \
      bzip2 \
      ca-certificates \
      curl \
      file \
      g++ \
      gcc \
      libcurl4-openssl-dev \
      liblzma-dev \
      libmysqlclient-dev \
      libsqlite3-dev \
      libssl-dev \
      libtool \
      libwebp-dev \
      libxml2-dev \
      libxslt-dev \
      libyaml-dev \
      locales \
      make \
      patch \
      procps \
      zlib1g-dev \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*.deb