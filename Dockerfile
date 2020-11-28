FROM golang:1.15.3 as builder
ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
WORKDIR /go/src/github.com/sample
COPY . .
RUN go build ./api/src/cmd/main.go

# # Nodeイメージの取得
FROM node:14.4.0-alpine
RUN apk update
RUN apk add curl
RUN apk add --no-cache supervisor

WORKDIR /src
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build
COPY --from=builder /go/src/github.com/sample /src
