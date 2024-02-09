cask 'confluent-hub-client' do
  version '7.6.0'
  sha256 'fedbbcbed1f8d00ff992b9e3d117f62913ffc877144f85a85366218d0f9d84ff'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
