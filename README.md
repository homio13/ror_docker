# ビルド
```
docker-compose build
```

# railsのインストールなどなど
```
docker-compose run app rails new . --force --database=mysql
```

# データベース設定ファイル
database.yml.sampleの中身をconfig/database.ymlに置き換える。

# コンテナの起動
```
docker-compose up
```