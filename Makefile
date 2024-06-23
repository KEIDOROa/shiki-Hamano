# イメージ名
IMAGE_NAME=shiki-hamano

# ターゲット: ビルド
build:
	docker build -t $(IMAGE_NAME) .

# ターゲット: 実行
run:
	docker run -d -p 8080:80 --name $(IMAGE_NAME) $(IMAGE_NAME)
	@echo "Server is running at http://localhost:8080"

# ターゲット: 停止
stop:
	-docker stop $(IMAGE_NAME)
	-docker rm $(IMAGE_NAME)

# ターゲット: 再起動
restart: stop build run

# ターゲット: クリーンアップ
clean: stop
	-docker rmi $(IMAGE_NAME)

.PHONY: build run stop restart clean
