FROM golang:alpine
LABEL maintainer="Brady Walsh"

ENV SOURCES /go/src/cloud-native-go

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080
EXPOSE ${PORT}

ENTRYPOINT [ "cloud-native-go" ]