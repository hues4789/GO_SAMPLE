# ベースとなるGoのDockerイメージを指定
FROM golang:1.17

# ワークディレクトリを設定
WORKDIR /app


# 依存関係のインストール
#RUN go mod download
COPY go.mod .
RUN go mod download

COPY . .

RUN go build -o main .

# コンテナが起動した際に実行されるコマンドを指定
CMD ["go","run","main.go"]
