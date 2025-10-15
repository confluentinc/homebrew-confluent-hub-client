cask 'confluent-hub-client' do
  version '8.1.0'
  sha256 'cb47ca7e04e06c334d7ce09477dbb46c0e5e2c675a115a6363e18abfc6e4106c'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
