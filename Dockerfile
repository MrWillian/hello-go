FROM golang as hello-go

LABEL version="1.0.0" description="Hello Full Cycle" maintainer="Willian Marciel<williansoares.dev@gmail.com>"

ADD . /go/src/hello-go

RUN go get golang.org/x/net/html

RUN go install hello-go

ENTRYPOINT /go/bin/hello-go

EXPOSE 8080
