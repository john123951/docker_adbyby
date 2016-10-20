FROM debian:latest
MAINTAINER sweet <sweet123951@gmail.com>

ENV TEMP_PATH=/temp

# update
RUN apt-get update && apt-get install wget && apt-get clean

RUN mkdir ${TEMP_PATH} -p
WORKDIR ${TEMP_PATH}

# download adbyby
RUN wget http://update.adbyby.com/download/linux.64.tar.gz
RUN tar -zxvf linux.64.tar.gz

EXPOSE 8118

CMD ["/bin/bash", "-c","${TEMP_PATH}/bin/adbyby"]
