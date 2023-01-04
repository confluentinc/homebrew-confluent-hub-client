cask 'confluent-hub-client' do
  version '7.1.5'
  sha256 'eb4ab8000619119a3e2b2f2096a9adc66df39ef48f6a0b61e1740d992292b4da'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
