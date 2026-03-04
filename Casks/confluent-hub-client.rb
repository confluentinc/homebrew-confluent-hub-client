cask 'confluent-hub-client' do
  version '8.2.0'
  sha256 'aa5a958b783467db5d566a4cd1e37c6c53e41e68eaf94ffe6bfc5267a31d204d'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
