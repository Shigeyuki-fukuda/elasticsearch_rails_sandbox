# このリポジトリをクローンしてローカルで動かす場合

- Railsコンソール上で以下を実行し、Elasticsearchでの検索に必要なデータをインポートすること。

```ruby
$ Manga.create_index!Manga.create_index!
$ Manga.__elasticsearch__.import
```

# Docker

## 起動

```bash
$ docker-compose up -d
```

## 停止

```bash
$ docker-compose stop
```