FROM debian
RUN apt-get update -y && \
  apt-get install -y tigervnc-standalone-server && \
  rm -rf /var/lib/apt/lists
ENV VNC_DESKTOP_NAME "Xtigervnc"
ENV VNC_GEOMETRY 1280x800
CMD Xtigervnc -desktop "$VNC_DESKTOP_NAME" -geometry "$VNC_GEOMETRY" -listen tcp -ac -SecurityTypes None -AlwaysShared -AcceptKeyEvents -AcceptPointerEvents -SendCutText -AcceptCutText :0