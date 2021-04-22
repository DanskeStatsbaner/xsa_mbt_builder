FROM devxci/mbtci-alpine:latest

RUN apk add --no-cache gcc musl-dev
RUN apt-get install build-essential -y --no-install-recommends
