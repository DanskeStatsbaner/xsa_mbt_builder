FROM alpine:latest as alpine
RUN apk add --update --no-cache make npm

#RUN apk add --no-cache --virtual .gyp \
#        python \
#        make \
#        g++ \
#    && npm install \
#    && apk del .gyp

FROM python:latest as python

COPY --from=alpine / /

FROM devxci/mbtci-alpine:latest as mbtci

ARG MBT_USER_HOME=/home/mbt

COPY --from=python / /

RUN adduser -h "${MBT_USER_HOME}" \
            -s /bin/bash \
            -u 1000 \
            -D \
            mbt

RUN chmod -R 777 "${MBT_USER_HOME}"
RUN chown -R 1000:1000 "${MBT_USER_HOME}"

USER mbt
