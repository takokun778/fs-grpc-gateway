#!/bin/bash

rm -rf openapiv3

mkdir tmp

# protoc を利用して proto ファイルから openapi v2 の json コードを生成
protoc ./proto/user/**/*.proto --openapiv2_out ./tmp/ --openapiv2_opt logtostderr=true

protoc ./proto/task/**/*.proto --openapiv2_out ./tmp/ --openapiv2_opt logtostderr=true

mkdir openapiv3

# api を利用して version2 の json ファイルから v3 のyaml ファイルを生成
curl -X POST "https://converter.swagger.io/api/convert" \
     -H "Content-Type: application/json" \
     -H "Accept: application/yaml" \
     -d @./tmp/proto/task/v1/task.swagger.json \
     -o ./openapiv3/task.openapi.yaml

curl -X POST "https://converter.swagger.io/api/convert" \
     -H "Content-Type: application/json" \
     -H "Accept: application/yaml" \
     -d @./tmp/proto/user/v1/user.swagger.json \
     -o ./openapiv3/user.openapi.yaml

rm -rf tmp
