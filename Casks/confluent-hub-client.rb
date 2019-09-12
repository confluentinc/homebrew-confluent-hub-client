cask 'confluent-hub-client' do
  version '5.3.1'
  sha256 '4dea6745cc4bd73c9be4d3fe95fb20686ae469cfa6533d59d894b48f08737a43'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
