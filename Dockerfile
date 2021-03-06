FROM golang:1.4.2
MAINTAINER Eric Holmes <eric@remind101.com>

ADD . /go/src/github.com/remind101/empire
WORKDIR /go/src/github.com/remind101/empire
RUN go get github.com/tools/godep && godep go install ./cmd/empire

LABEL version 0.9.0

ENTRYPOINT ["/go/bin/empire"]
CMD ["server"]

EXPOSE 8080
