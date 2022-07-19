cask 'confluent-hub-client' do
  version '7.0.4'
  sha256 '29702da96fa7a40880e025f86ca77499535ecc0126733d974332090d1f88bd1d'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
