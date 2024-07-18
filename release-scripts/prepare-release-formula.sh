#!/usr/bin/env bash

set -e
set -x

if [ -z "$RELEASE_TAG" ]
then
  echo "\$RELEASE_TAG is empty"
  exit 1
fi

version=${RELEASE_TAG:1}

function install_mvn_dependency {
	rm -rf $1
	git clone git@github.com:confluentinc/$1.git
	pushd $1
	git checkout $RELEASE_TAG
	mvn -Pjenkins clean install -DskipTests
	popd
}

pushd /tmp

rm -rf kafka
git clone git@github.com:confluentinc/kafka.git
pushd kafka
git checkout $RELEASE_TAG
if [ ! -x ./gradlew ]; then
    gradle
fi
./gradlewAll -PskipSigning=true clients:install connect:api:install connect:runtime:install install
popd

for repo in license-file-generator common; do
	install_mvn_dependency $repo
done

#private-common was deprecated in 5.3.x
if [[ $RELEASE_TAG == v5.2.* ]] ;
then
	echo "Installing private-common"
	install_mvn_dependency private-common
else
	echo "Skipping installation of private-common"
fi

rm -rf hub-client
git clone git@github.com:confluentinc/hub-client.git
pushd hub-client
git checkout $RELEASE_TAG
mvn clean package
shasum -a 256 target/confluent-hub-client-*-package.tar.gz | cut -c1-64 > $(ls target/confluent-hub-client-*-package.tar.gz).sha256.txt
sha_sum=$(cat target/confluent-hub-client-*-package.tar.gz.sha256.txt)
aws s3 cp target/confluent-hub-client-*-package.tar.gz s3://client.hub.confluent.io/
aws s3 cp target/confluent-hub-client-*-package.tar.gz.sha256.txt s3://client.hub.confluent.io/

# Update latest if required
if [[ "$UPDATE_LATEST" == "True" ]]; then
	aws s3 cp target/confluent-hub-client-*-package.tar.gz s3://client.hub.confluent.io/confluent-hub-client-latest.tar.gz
	aws s3 cp target/confluent-hub-client-*-package.tar.gz.sha256.txt s3://client.hub.confluent.io/confluent-hub-client-latest.tar.gz.sha256.txt
fi

popd

rm -rf homebrew-confluent-hub-client
git clone git@github.com:confluentinc/homebrew-confluent-hub-client.git
pushd homebrew-confluent-hub-client
git checkout -b "prepare-$RELEASE_TAG"
sed -i -E "s/version '.*'/version '$version'/g" Casks/confluent-hub-client.rb
sed -i -E "s/sha256 '.*'/sha256 '$sha_sum'/g" Casks/confluent-hub-client.rb
git add Casks/confluent-hub-client.rb
git commit -m "Bump up formula to $RELEASE_TAG"
git push origin "prepare-$RELEASE_TAG"
