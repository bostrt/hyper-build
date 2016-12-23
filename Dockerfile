FROM fedora:25

RUN dnf install -y libicns-utils libicns-devel GraphicsMagick GraphicsMagick-devel xz xz-devel npm

COPY build.sh /

WORKDIR hyper

ENTRYPOINT ["/bin/bash", "/build.sh"]
