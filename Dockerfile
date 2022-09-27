FROM debian
RUN apt-get update -y && \
  apt-get install -y tigervnc-standalone-server openbox wget && \
  rm -rf /var/lib/apt/lists
ENV VNC_DESKTOP_NAME "Xtigervnc"
ENV VNC_GEOMETRY 1280x800
RUN mkdir -p /exo && wget https://github.com/deref/exo/releases/download/2021.11.16/exo_standalone_2021.11.16_linux_amd64.tar.gz -O- | tar xvz && mv exo /usr/local/bin && chmod +x /usr/local/bin/exo && rm -rf /exo
COPY app/ /app/
COPY root/.config/openbox/ /root/.config/openbox/
CMD /app/main.sh