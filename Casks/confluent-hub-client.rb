cask 'confluent-hub-client' do
  version '7.9.0'
  sha256 'c370aac6d4fc0ae1dc7efe0ba98babade2c7b9dac7a9c51e8d2248590b6a9838'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
