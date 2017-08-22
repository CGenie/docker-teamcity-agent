FROM jetbrains/teamcity-agent:latest
MAINTAINER Alexander Gorokhov <sashgorokhov@gmail.com>

RUN set -x; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        unzip \
    && rm -rf /var/lib/apt/lists/*

COPY /setup_docker.sh /
RUN /setup_docker.sh
