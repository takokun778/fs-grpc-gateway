# fs-grpc

# 参考
grpc
- [protocol buffers IDL再入門](https://qiita.com/Hiraku/items/7c8f56e8564158c895f9)
- [Cloud API](https://cloud.google.com/apis/design/naming_convention?hl=ja)
- [protocの使い方](https://christina04.hatenablog.com/entry/protoc-usage)
- [protocolBuffersでgoogle/protobufをimportする方法](https://qiita.com/revenue-hack/items/7221f8e015d47d894854)
- [Goで始めるgRPC入門](https://qiita.com/marnie_ms4/items/4582a1a0db363fe246f3)

grpc-gateway
- [grpc-gateway](https://github.com/grpc-ecosystem/grpc-gateway)
- [protoc-gen-openapi](https://github.com/zchee/protoc-gen-openapi)
- [how-to-convert-openapi-2-to-openapi-3](https://stackoverflow.com/questions/59749513/how-to-convert-openapi-2-0-to-openapi-3-0)
- [converter-swagger](https://converter.swagger.io/)

clientファイルの作り方
1. `openapiv2_out` 使って json ファイル吐き出す
2. json ファイルの内容を yaml 形式 かつ version 3 に変換する
3. web editor 使って client のファイルを自動生成する
