# ベースイメージとしてnginxを使用
FROM nginx:alpine

# 作成したHTMLファイルをnginxのデフォルトのドキュメントルートにコピー
COPY html /usr/share/nginx/html

# コンテナが実行される際に公開するポート
EXPOSE 80
