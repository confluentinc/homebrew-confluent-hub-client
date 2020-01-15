cask 'confluent-hub-client' do
  version '5.4.0'
  sha256 'c8b735b1a435ab70f9ad4d1ddf4d1f6a34ab792364f2bad0b6f03728e3bd57d6'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
