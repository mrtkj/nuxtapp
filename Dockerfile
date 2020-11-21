FROM golang:1.15.3 as builder

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
WORKDIR /go/src/github.com/sample
COPY . .
RUN go build ./api/src/cmd/main.go

# Nodeイメージの取得
FROM node:14.4.0-alpine
RUN apk update
RUN apk add curl

# ワーキングディレクトリの指定
WORKDIR /src
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build
# 起動コマンド
CMD ["yarn", "run", "start"]

COPY --from=builder /go/src/github.com/sample /app