FROM golang:alpine
COPY httpenv.go /go
RUN go build httpenv.go
FROM alpine
COPY --from=0 /go/httpenv /httpenv
CMD ["/httpenv"]
EXPOSE 8888
