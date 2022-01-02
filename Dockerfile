###################################################################
## Build
###################################################################
FROM golang:1.17.5-alpine3.15 AS build

RUN mkdir /src
RUN mkdir /output

COPY /src /src

WORKDIR /src

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /out/janitor .

###################################################################
## Scratch
###################################################################
FROM scratch AS bin

COPY --from=build /out/janitor /

CMD ["/janitor"]
