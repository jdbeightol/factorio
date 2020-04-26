FROM ubuntu
RUN apt-get update -y && apt-get install -y \
    xz-utils
ADD https://www.factorio.com/get-download/stable/headless/linux64 factorio.tar.xz
RUN tar -xJC /opt -f factorio.tar.xz
ADD server-settings.json /opt/factorio/server-settings.json
ENTRYPOINT /opt/factorio/bin/x64/factorio --server-settings /opt/factorio/server-settings.json --start-server /opt/factorio/saves/savegame.zip

