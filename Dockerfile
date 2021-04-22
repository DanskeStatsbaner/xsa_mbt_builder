FROM devxci/mbtci-alpine:latest

FROM alpine:latest
RUN apk add --no-cache gcc musl-dev

FROM openjdk:8-jdk-slim
RUN apt-get install build-essential -y --no-install-recommends
