cask 'confluent-hub-client' do
  version '5.2.3'
  sha256 '1aa7b3fb31308cb6495bd033e40b6f8c53ec0501a0fdd21447864ccf12c965f2'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
