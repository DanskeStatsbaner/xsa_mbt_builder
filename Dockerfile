FROM alpine:latest as alpine
RUN apk add --no-cache make npm

FROM devxci/mbtci-alpine:latest as mbtci
COPY --from=alpine / /
RUN  chmod -R 777 /

# RUN apk add --no-cache gcc musl-dev make


