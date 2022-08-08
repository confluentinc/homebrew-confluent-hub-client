cask 'confluent-hub-client' do
  version '6.0.9'
  sha256 '74b34b11f94982c78c96461b54173684774f83b510485fdb60dffa32507f6fa8'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
