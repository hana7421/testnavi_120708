# Pythonの軽量イメージを使用
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /workspace

# 必要なファイルをコンテナにコピー
COPY .devcontainer/requirements.txt .
COPY . .

# Pythonライブラリをインストール
RUN pip install --no-cache-dir -r requirements.txt

# Flaskアプリケーションが使用するポートを公開
EXPOSE 5000

# アプリケーションの起動
CMD ["python", "run.py"]
