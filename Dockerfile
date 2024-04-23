FROM golang:1.22

WORKDIR /app

COPY . .

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go mod tidy

RUN  go build -o /main

CMD ["/main"]