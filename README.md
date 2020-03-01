# Rails6でElasticsearchのキーワード検索実装ハンズオン
このリポジトリは [Rails6でElasticsearchのキーワード検索実装ハンズオン](https://qiita.com/fuqda/items/d568aaf6b28f2d348b0f)のサンプルアプリの完成版リポジトリです。

## このリポジトリをクローンしてローカルで動かす場合
Railsコンソール上で以下を実行し、Elasticsearchでの検索に必要なデータをインポートして下さい。

```bash
# docker-compose up -dを実行してから行うこと
$ bundle exec rails db:create
$ bundle exec rails db:migrate
$ bundle exec rails db:seed
$ Manga.create_index!
$ Manga.__elasticsearch__.import
```

## Dockerの起動・停止について

### 起動

```bash
$ docker-compose up -d
```

### プロセスの確認

```bash
$ docker-compose ps
```

### 停止

```bash
$ docker-compose stop
```
