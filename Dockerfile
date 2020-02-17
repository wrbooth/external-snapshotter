FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Snapshotter"

ARG ARCH

COPY ./bin/csi-snapshotter-${ARCH} csi-snapshotter
ENTRYPOINT ["/csi-snapshotter"]
