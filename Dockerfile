FROM debian:10

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="07.03.2020"

RUN apt-get update \
    && apt-get install -y python3-pip libssl-dev git

RUN apt-get install ansible -y \
    && python3 -m pip install -U git+https://github.com/ansible-community/molecule
