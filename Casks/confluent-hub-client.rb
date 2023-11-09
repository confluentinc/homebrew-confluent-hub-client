cask 'confluent-hub-client' do
  version '7.5.2'
  sha256 'a59d605ca0a61e96d82a9c0b8ef53970ef426ae8a7c727eeef5b7ba3da682695'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
