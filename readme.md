# Start
```
docker-compose up -d
```

# Stop & clear data
```
docker-compose down -v
```

# RabbitMQ cluster
* https://www.rabbitmq.com/clustering.html
* https://thewebland.net/development/devops/rabbitmq/nastrojka-klastera-rabbitmq-na-docker/
* https://github.com/rabbitmq/rabbitmq-consistent-hash-exchange
* https://github.com/rabbitmq/rabbitmq-sharding

Use same cookie
```
docker-compose exec rabbitmq-1 rabbitmqctl cluster_status
docker-compose exec rabbitmq-2 rabbitmqctl cluster_status
```

Check admin
* http://localhost:15672/#/exchanges
* http://localhost:25672/#/exchanges