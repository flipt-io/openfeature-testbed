FROM flipt/flipt:latest
LABEL org.opencontainers.image.source=https://github.com/flipt-io/openfeature-testbed

ADD ./import.yaml /import.yaml

RUN ["/flipt", "import", "/import.yaml"]

#ENV FLIPT_LOG_LEVEL=debug

CMD ["./flipt"]