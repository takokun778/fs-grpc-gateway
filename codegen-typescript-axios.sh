#!/bin/bash

# typescript
# axios
# task
rm -rf ./typescript/axios/task

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/openapiv3/task.openapi.yaml -g typescript-axios -o /local/typescript/axios/task --additional-properties=supportsES6=true

# user
rm -rf ./typescript/axios/user

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/openapiv3/user.openapi.yaml -g typescript-axios -o /local/typescript/axios/user --additional-properties=supportsES6=true
