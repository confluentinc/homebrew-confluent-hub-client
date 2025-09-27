cask 'confluent-hub-client' do
  version '8.0.1'
  sha256 'afebc556d6cb33a6762d139feec202b0ad93f9d32b19cc8992e499e12749137c'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
