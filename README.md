# fastapi_db_training

## docker compose operation

```
docker compose up
```

## Manual operation

### Setup

```
docker image build -t sample-mysql:1.0.0 -f docker/db/Dockerfile .
docker image build -t sample-api:1.0.0 -f docker/app/Dockerfile .
docker network create docker-sample-network
```

### Run db (mysql) container

```
docker container run --name sample-mysql-container --rm --publish 3306:3306 --network docker-sample-network --network-alias db sample-mysql:1.0.0
```

### Run app (api) container

```
docker container run --name sample-api-container --rm --env-file=./docker/app/.env --mount type=bind,src=$(pwd)/docker/app/src,dst=/app/app --publish 80:80 --network docker-sample-network --network-alias api sample-api:1.0.0
```

## Test

- from host

```
curl -s -X GET 'http://localhost:80/item' | jq
curl -s -X GET 'http://localhost:80/item?id=1' | jq
curl -X POST 'http://localhost:80/item' -H 'Content-Type: application/json' -d '{"name":"banana","price":123}'
curl -s -X PUT "http://localhost:80/item/1" -H 'Content-Type: application/json' -d '{"name":"super apple","price":500}'
```

## References

- https://qiita.com/yota_dev/items/8309dd294975b15c22d5
- https://zenn.dev/suzuki_hoge/books/2022-03-docker-practice-8ae36c33424b59/
