FROM debian:10

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="07.03.2020"

RUN apt-get update \
    && apt-get install --yes python3-pip libssl-dev git

RUN apt-get install ansible --yes \
    && python3 -m pip install --upgrade git+https://github.com/ansible-community/molecule
