cask 'confluent-hub-client' do
  version '7.0.2'
  sha256 '28822e3c8ffb6d7c18cce883de3c0d77ab68ff329e81f488331fa63da244ff87'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
