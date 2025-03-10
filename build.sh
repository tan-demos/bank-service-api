#!/usr/bin/env sh

rm -r ./generated-java

openapi-generator-cli generate -i api.yaml -g java -o generated-java \
--model-package=com.bank.api.model \
--api-package=com.bank.api.client  \
--group-id=com.bank \
--artifact-id=bank-service-api \
--additional-properties=usePrimitives=true || exit

cd generated-java || exit

chmod a+x gradlew

./gradlew jar

cp build/libs/*.jar ../../bank-service/libs/
cp build/libs/*.jar ../../bank-service-test/libs/

