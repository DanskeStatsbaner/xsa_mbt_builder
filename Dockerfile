FROM alpine:latest
RUN apk add --no-cache make 
RUN cp ./usr/lib/make make

FROM devxci/mbtci-alpine:latest

# RUN apk add --no-cache gcc musl-dev make


