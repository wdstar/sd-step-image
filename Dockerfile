FROM golang:alpine

ARG VERSION
RUN apk --update add git && \
    apk add --virtual build-deps curl musl-dev gcc && \
    go get github.com/screwdriver-cd/sd-step && \
    cd $GOPATH/src/github.com/screwdriver-cd/sd-step && \
    go build -a -o sd-step && \
    cp sd-step /usr/local/bin/ && \
    curl -L -O https://api.bintray.com/content/habitat/stable/linux/x86_64/hab-%24latest-x86_64-linux.tar.gz?bt_package=hab-x86_64-linux && \
    tar xvzf hab-* && \
    mkdir -p /opt/sd/bin/ && \
    cp hab-*-linux/hab /opt/sd/bin/ && \
    rm -rf $GOPATH/src/github.com/screwdriver-cd/sd-step && \
    rm -rf hab-* && \
    apk del build-deps && \
    rm -rf /var/cache/apk/*
