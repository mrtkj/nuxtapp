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