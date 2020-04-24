cask 'confluent-hub-client' do
  version '5.5.0'
  sha256 '30e5f51b4ac474d885b77a3f7dbbbd63c9a783b756fae5175699bc8b1c0f3b09'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
