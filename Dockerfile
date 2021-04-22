FROM alpine:latest as alpine
RUN apk add --no-cache make npm

FROM devxci/mbtci-alpine:latest as mbtci
COPY --from=alpine / /
RUN chmod -R 777 ./usr/
RUN chown -R 1000:1000 ./usr/
# RUN chown -R 1000:1000 "/.npm"

# RUN apk add --no-cache gcc musl-dev make


