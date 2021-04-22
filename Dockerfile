FROM alpine:latest as alpine
RUN apk add --no-cache make 

FROM devxci/mbtci-alpine:latest as mbtci
COPY --FROM=alpine // 

# RUN apk add --no-cache gcc musl-dev make


