FROM alpine:3.11

RUN apk add --no-cache \
    bash \
    python3 \
    gcc \
    py3-pip &&\
    pip3 install --upgrade pip &&\
    pip3 install PyGithub &&\
    rm -rf /tmp/* &&\
    apk del --purge py3-pip

COPY comment-pr /usr/local/bin/

ENTRYPOINT ["comment-pr"]