cask 'confluent-hub-client' do
  version '7.0.1'
  sha256 '05b8d4867c3d413fa115eb0fe0b646e1b5b23fa49868031ec2c6409cb16d6c32'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
