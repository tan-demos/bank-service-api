# Bank Service API  
API is defined via `OpenAPI`.
Server and client code can be generated via `openapi-generator-cli`

E.g.

``` 

openapi-generator-cli generate -i api.yaml -g java -o ./generated-java \
--model-package=com.bank.api.model \
--api-package=com.bank.api.client  \
--group-id=com.bank \
--artifact-id=bank-service-api \
--library=resttemplate

```
