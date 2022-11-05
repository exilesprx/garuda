FROM gitlab/gitlab-runner:v15.2.2 AS build

RUN apt -y update \
  && apt -y install vim

COPY config.toml /etc/gitlab-runner/