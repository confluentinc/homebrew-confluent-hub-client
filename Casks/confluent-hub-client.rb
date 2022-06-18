cask 'confluent-hub-client' do
  version '7.1.1'
  sha256 'd499a97f7e8d25bed52d4725e80c1fbdbf44b5bee47e619f785af329eb8fb8ea'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
