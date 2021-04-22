FROM alpine:latest as alpine
RUN apk add --no-cache make npm useradd

FROM devxci/mbtci-alpine:latest as mbtci

ARG MBT_USER_HOME=/home/mbt

COPY --from=alpine / /

RUN useradd --home-dir "${MBT_USER_HOME}" \
            --create-home \
            --shell /bin/bash \
            --user-group \
            --uid 1000 \
            --comment 'Cloud MTA Build Tool' mbt

RUN chmod -R 777 "${MBT_USER_HOME}"
RUN chown -R 1000:1000 ./

USER mbt