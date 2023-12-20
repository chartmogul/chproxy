FROM golang:1.21.5

RUN apt update && apt install -y ca-certificates curl

COPY . /
WORKDIR /

RUN GOOS=linux GOARCH=amd64 go build -v 

EXPOSE 9090

ENTRYPOINT ["/chproxy"]
CMD [ "--help" ]
