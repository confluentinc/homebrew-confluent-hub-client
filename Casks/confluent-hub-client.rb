cask 'confluent-hub-client' do
  version '7.9.1-72'
  sha256 '4e3a930c67b796820e4eb68d7c8ad7bcdd90895092c1c93687780b3145741f68'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
