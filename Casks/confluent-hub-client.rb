cask 'confluent-hub-client' do
  version '7.1.0'
  sha256 'f1871ff498e0b3f2bdddc13fb6051077265f53e321af62d9f3715a4a3dfa17ca'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
