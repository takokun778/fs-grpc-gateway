.PHONY: openapiv2
.PHONY: openapiv3
codegen_golang:
	rm -rf ./pb && \
	protoc ./proto/user/**/*.proto --go_out=./ --go-grpc_out=./ --grpc-gateway_out ./ && \
	protoc ./proto/task/**/*.proto --go_out=./ --go-grpc_out=./ --grpc-gateway_out ./
openapiv3_gen:
	rm -rf ./openapiv2/proto && \
	protoc ./proto/user/**/*.proto --openapiv2_out ./openapiv2/ --openapiv2_opt logtostderr=true && \
	protoc ./proto/task/**/*.proto --openapiv2_out ./openapiv2/ --openapiv2_opt logtostderr=true && \
	./convert2to3.sh
cp:
	cp ./googleapis/google/api/annotations.proto ./google/api/annotations.proto && \
	cp ./googleapis/google/api/http.proto ./google/api/http.proto
openapiv2:
	rm -rf ./openapiv2/proto && \
	protoc ./proto/user/**/*.proto --openapiv2_out ./openapiv2/ --openapiv2_opt logtostderr=true && \
	protoc ./proto/task/**/*.proto --openapiv2_out ./openapiv2/ --openapiv2_opt logtostderr=true
openapiv3:
	protoc ./proto/**/**/*.proto --openapi_out=single_file=true,use_ref=true,yaml=true:./openapiv3/
openapigentest:
	protoc ./proto/user/**/*.proto --openapi_out=yaml=true:./openapi/ && \
	protoc ./proto/task/**/*.proto --openapi_out=yaml=true:./openapi/
convert2to3:
	./convert2to3.sh
# cat ./openapiv2/proto/task/v1/task.swagger.json && \
# curl -X POST -H "Accept: application/yaml" "https://converter.swagger.io/api/convert?url=openapiv2/proto/task/task.swagger.json" -o ./task.swagger.yaml
