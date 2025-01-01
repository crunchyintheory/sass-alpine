FROM alpine
RUN apk add wget
ARG TARGETARCH TARGETOS
RUN case $TARGETARCH in \
        arm64) export PLATFORM=arm64 ;; \
        amd64) export PLATFORM=x64 ;; \
    esac ; \
    wget -O - https://github.com/sass/dart-sass/releases/download/1.83.0/dart-sass-1.83.0-$TARGETOS-$PLATFORM.tar.gz | tar xz
RUN mv dart-sass/sass /bin
RUN rm -r dart-sass
RUN apk del wget
    