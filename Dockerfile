FROM alpine:latest as alpine
RUN apk add --no-cache make npm

FROM devxci/mbtci-alpine:latest as mbtci
COPY --from=alpine / /
RUN useradd --user-group \
            --uid 1000 \
            --comment 'Cloud MTA Build Tool' mbt
RUN chmod -R 777 ./usr/
RUN chown -R 1000:1000 ./usr/

USER mbt
