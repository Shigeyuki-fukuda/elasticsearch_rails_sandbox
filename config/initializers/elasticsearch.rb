# hostはdocker-composeのservicesに設定した名前「elasticsearch」ではなく「localhost」を指定しないとエラーになるので注意
# 参考：https://qiita.com/s_yasunaga/items/b0dac7f962c265158a34
config = {
  host:  ENV['ELASTICSEARCH_HOST'] || "localhost",
  port:  ENV['ELASTICSEARCH_PORT'] || "9200",
  user:  ENV['ELASTICSEARCH_USER'] || "",
  password:  ENV['ELASTICSEARCH_PASSWORD'] || ""
}
Elasticsearch::Model.client = Elasticsearch::Client.new(config)
