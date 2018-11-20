cask 'confluent-hub-client' do
  version '5.0.1'
  sha256 'a640fbbdf6c750c82716a29afc2b76847f622218dd8521cdd9dccaf509ebc13d'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
