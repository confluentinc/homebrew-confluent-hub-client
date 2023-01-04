cask 'confluent-hub-client' do
  version '7.2.3'
  sha256 '9f5cb4e149627192bf956dca0c0a3647789611be7f3a8a70c5ec4cbf8b99b13d'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
