cask 'confluent-hub-client' do
  version '7.8.0'
  sha256 'd0dd5fefa67c7d38efbff5f57891428f6edbf369b6f0c17f6549b13a4ea0f2a0'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
