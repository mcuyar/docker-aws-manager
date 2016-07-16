FROM alpine:3.3

RUN apk --no-cache add bash jq python py-pip \
    && pip install --upgrade pip \
    && pip install awscli \
    && pip install awsebcli

ENTRYPOINT ["init"]

##/
 # Copy files
 #/
COPY rootfs /