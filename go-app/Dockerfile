FROM golang:1.18-alpine as builder 
WORKDIR /go/src 
COPY ./wiki.go .

RUN go build wiki.go

FROM alpine:3.9
RUN mkdir -p /app/data /app/tmpl && adduser -S -D -H -h /app appuser
COPY view.html edit.html /app/tmpl 

COPY --from=builder /go/src/wiki /app/wiki

RUN chown -R appuser /app
USER appuser
WORKDIR /app

EXPOSE 8080
CMD ["/app/wiki"]

