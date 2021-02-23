
FROM golang:1.12.0-alpine3.9
FROM golang:1.10
RUN mkdir /app

ADD . /app

WORKDIR /app

FROM golang:1.10

WORKDIR /
COPY . .
RUN go get -d github.com/gorilla/mux

CMD ["go","run","main.go"]