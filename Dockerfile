FROM debian:10

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="07.03.2020"

RUN apt-get update
RUN apt-get install --yes python3-pip 
RUN apt-get install --yes libssl-dev
RUN apt-get install --yes git
RUN apt-get install --yes ansible
RUN python3 -m pip install --upgrade git+https://github.com/ansible-community/molecule
