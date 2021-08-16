#!/bin/bash

# task
rm -rf ./typescript/task

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/openapiv3/task.openapi.yaml -g typescript-fetch -o /local/typescript/task --additional-properties=supportsES6=true,typescriptThreePlus=true

# user
rm -rf ./typescript/user

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/openapiv3/user.openapi.yaml -g typescript-fetch -o /local/typescript/user --additional-properties=supportsES6=true,typescriptThreePlus=true
