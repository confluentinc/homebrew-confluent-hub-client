cask 'confluent-hub-client' do
  version '7.5.3'
  sha256 '299d31a42d10455048dfe9a4ebe18449254b648639e822da3cd536def4fccaf2'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
