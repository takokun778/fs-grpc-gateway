#!/bin/bash

# typescript
# fetch
# task
rm -rf ./typescript/fetch/task

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/openapiv3/task.openapi.yaml -g typescript-fetch -o /local/typescript/fetch/task --additional-properties=supportsES6=true,typescriptThreePlus=true

# user
rm -rf ./typescript/fetch/user

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/openapiv3/user.openapi.yaml -g typescript-fetch -o /local/typescript/fetch/user --additional-properties=supportsES6=true,typescriptThreePlus=true
