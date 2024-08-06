cask 'confluent-hub-client' do
  version '7.6.2'
  sha256 '65accc7751867f12bf06b9b8651f09b6604dc2f3a6e4e0ad4b43f393dcda0424'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
