FROM alpine:latest

RUN apk --no-cache --update --repository=http://dl-4.alpinelinux.org/alpine/edge/community \
    add bash jq python py-pip mysql-client pv \
    && pip install --upgrade pip \
    && pip install awscli \
    && pip install awsebcli

ENTRYPOINT ["init"]

##/
 # Copy files
 #/
COPY rootfs /

