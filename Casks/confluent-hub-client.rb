cask 'confluent-hub-client' do
  version '7.8.1'
  sha256 '63155b309c46a70cb10df85af189cd7cdc7cca56fde127e7db9e1b1b583d732b'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
