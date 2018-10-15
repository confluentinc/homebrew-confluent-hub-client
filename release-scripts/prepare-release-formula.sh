#!/usr/bin/env bash

set -e
set -x

if [ -z "$RELEASE_TAG" ]
then
  echo "\$RELEASE_TAG is empty"
  exit 1
fi

echo "UPDATE_LATEST=$UPDATE_LATEST"

version=${RELEASE_TAG:1}

cd /tmp

rm -rf kafka
git clone git@github.com:confluentinc/kafka.git
cd kafka
git checkout $RELEASE_TAG
gradle
./gradlew installAll
cd -

rm -rf common
git clone git@github.com:confluentinc/common.git
cd common
git checkout $RELEASE_TAG
mvn clean install -DskipTests
cd -

git clone git@github.com:confluentinc/private-common.git
cd private-common
git checkout $RELEASE_TAG
mvn clean install -DskipTests
cd -

rm -rf hub-client
git clone git@github.com:confluentinc/hub-client.git
cd hub-client
git checkout $RELEASE_TAG
mvn clean package
shasum -a 256 target/confluent-hub-client-*-package.tar.gz | cut -c1-64 > $(ls target/confluent-hub-client-*-package.tar.gz).sha256.txt
sha_sum=$(cat target/confluent-hub-client-*-package.tar.gz.sha256.txt)
aws s3 cp target/confluent-hub-client-*-package.tar.gz s3://client.hub.confluent.io/
aws s3 cp target/confluent-hub-client-*-package.tar.gz.sha256.txt s3://client.hub.confluent.io/

rm -rf homebrew-confluent-hub-client
git clone git@github.com:confluentinc/homebrew-confluent-hub-client.git
cd homebrew-confluent-hub-client
git checkout -b "prepare-$RELEASE_TAG"
sed -i -E "s/version '.*'/version '$version'/g" Casks/confluent-hub-client.rb
sed -i -E "s/sha256 '.*'/sha256 '$sha_sum'/g" Casks/confluent-hub-client.rb
git add Casks/confluent-hub-client.rb
git commit -m "Bump up formula to $RELEASE_TAG"
git push origin "prepare-$RELEASE_TAG"

