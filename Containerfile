FROM ghcr.io/ublue-os/bazzite:test

COPY system_files /
COPY build_files /tmp

RUN /tmp/install-apps.sh
RUN /tmp/fix-opt.sh
RUN /tmp/build-initramfs.sh
RUN /tmp/cleanup.sh
