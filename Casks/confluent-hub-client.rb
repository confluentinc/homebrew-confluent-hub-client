cask 'confluent-hub-client' do
  version '6.2.0'
  sha256 'f307a8fc27ffa39b6acd0780aef7fd7ff21d04160de20662e6e8be57b5510caf'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
