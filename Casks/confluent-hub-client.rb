cask 'confluent-hub-client' do
  version '5.2.4'
  sha256 'ca877dd3225baa51d942d098d43b8c6fdb17f3b83ceb750cdcda07f3afa922ac'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
