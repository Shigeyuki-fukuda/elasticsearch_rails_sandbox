# Dockerの設定

## 起動

```bach
$ docker-compose up -d
```

## 注意点

- docker-compose.ymlの以下の部分とdatabase.ymlの該当項目は揃えないとDBに接続出来ないので注意すること

```docker-compose.yml
version: '3'
services:
  postgresql:
  <中略>
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: mysecretpassword1234
``````

```config/database.yml
default: &default
  default: &default
    adapter: postgresql
    port: 5432
    username: postgres
    password: mysecretpassword1234
    host: 127.0.0.1
    encoding: unicode
    pool: 5
```