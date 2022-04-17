# xtigervnc-docker

A standalone X11+VNC container for development in Docker based on [TigerVNC](https://tigervnc.org/).

TigerVNC’s [Xvnc](https://tigervnc.org/doc/Xvnc.html) provides both X11 and VNC servers in one, which [offers a better performance][whytiger] compared to running Xvfb and a VNC server separately. This lets you run GUI applications inside Docker without having to include an X server in the application image. For an example usage, see [docker-compose.yml](docker-compose.yml), which also uses [easy-novnc](https://github.com/pgaskin/easy-novnc) to provide web-based VNC access to a GUI application.

[Pre-built images are available on GitHub Packages](https://github.com/dtinth/xtigervnc-docker/pkgs/container/xtigervnc-docker), [built by GitHub Actions](https://github.com/dtinth/xtigervnc-docker/blob/main/.github/workflows/docker-publish.yml).

[whytiger]: https://www.digitalocean.com/community/tutorials/how-to-remotely-access-gui-applications-using-docker-and-caddy-on-debian-9#:~:text=For%20this%20container%2C%20you%20are%20using%20TigerVNC%20and%20its%20built%2Din%20VNC%20server.%20This%20has%20a%20number%20of%20advantages%20over%20using%20a%20separate%20X11%20and%20VNC%20server

## Ports

- `:6000` - X11 server
- `:5900` - VNC server

## Reference

<https://www.digitalocean.com/community/tutorials/how-to-remotely-access-gui-applications-using-docker-and-caddy-on-debian-9>
