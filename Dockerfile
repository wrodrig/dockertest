# stage 1
FROM golang:alpine3.12 AS build

ADD . .

RUN go test ./...

RUN go build sum.go


# stage 2
FROM alpine:3.12.0 AS run

COPY --from=build /go/sum .

USER 1000

CMD ["./sum"]
